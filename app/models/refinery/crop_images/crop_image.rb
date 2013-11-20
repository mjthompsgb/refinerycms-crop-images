module Refinery
  module CropImages
    class CropImage < Refinery::Core::BaseModel
      self.table_name = 'refinery_crop_images'

      attr_accessible :original_image_id, :position
      # def title was created automatically because you didn't specify a string field
      # when you ran the refinery:engine generator. <3 <3 Refinery CMS.
      def title
        "Override def title in vendor/extensions/crop_images/app/models/refinery/crop_images/crop_image.rb"
      end
    end
  end
end
