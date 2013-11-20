module Refinery
  module CropImages
    module Admin
      class CropImagesController < ::Refinery::AdminController

        crudify :'refinery/crop_images/crop_image', :xhr_paging => true

      end
    end
  end
end
