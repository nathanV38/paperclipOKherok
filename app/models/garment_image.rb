class GarmentImage < ActiveRecord::Base
  attr_accessible :, :, :caption, :garment_id
  
  belongs_to :garment
has_attached_file :photo,  :styles => { :small => "150×150>", :large => "320×240>" }
validates_attachment_presence : photo
validates_attachment_size : photo, :less_than => 1.megabytes
end
