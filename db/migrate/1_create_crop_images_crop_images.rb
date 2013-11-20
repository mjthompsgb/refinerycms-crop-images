class CreateCropImagesCropImages < ActiveRecord::Migration

  def up
    create_table :refinery_crop_images do |t|
      t.integer :original_image_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-crop_images"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/crop_images/crop_images"})
    end

    drop_table :refinery_crop_images

  end

end
