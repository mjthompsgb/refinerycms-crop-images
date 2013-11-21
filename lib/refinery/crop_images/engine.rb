module Refinery
  module CropImages
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::CropImages

      engine_name :refinery_crop_images

      

      config.after_initialize do
        Refinery.register_extension(Refinery::CropImages)
      end
    end
  end
end
