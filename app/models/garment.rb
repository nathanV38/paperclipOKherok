class Garment < ActiveRecord::Base
  attr_accessible :brand, :price, :size_id
  
  belongs_to :size
end
