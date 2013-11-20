require 'spec_helper'

module Refinery
  module CropImages
    describe CropImage do
      describe "validations" do
        subject do
          FactoryGirl.create(:crop_image)
        end

        it { should be_valid }
        its(:errors) { should be_empty }
      end
    end
  end
end
