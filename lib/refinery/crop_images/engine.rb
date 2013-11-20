module Refinery
  module CropImages
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::CropImages

      engine_name :refinery_crop_images

      initializer "register refinerycms_crop_images plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "crop_images"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.crop_images_admin_crop_images_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/crop_images/crop_image'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::CropImages)
      end
    end
  end
end
