module Refinery
  module CropImages
    class CropImagesController < ::ApplicationController

      before_filter :find_all_crop_images
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @crop_image in the line below:
        present(@page)
      end

      def show
        @crop_image = CropImage.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @crop_image in the line below:
        present(@page)
      end

    protected

      def find_all_crop_images
        @crop_images = CropImage.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/crop_images").first
      end

    end
  end
end
