module Refinery
  module CropImages
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::CropImages

      engine_name :refinery_crop_images

      
    end
  end
end
