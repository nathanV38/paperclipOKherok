class Garment < ActiveRecord::Base
  attr_accessible :brand, :price, :size_id
  
  belongs_to :size
  has_many :garment_image, :dependent => :destroy
  
  accepts_nested_attributes_for :garment_image, :reject_if => lambda { |t| t['garment_image'].nil? }
end
