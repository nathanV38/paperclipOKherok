class AddAttachment:photoToGarmentImages < ActiveRecord::Migration
  def self.up
    change_table :garment_images do |t|
      t.attachment ::photo
    end
  end

  def self.down
    drop_attached_file :garment_images, ::photo
  end
end
