class User < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :age, :photo
  
  belongs_to :category
  has_attached_file :photo, :styles => { :small => "150x150>", :thumb => "300x80>"},
  :url => "/:attachment/:id/:style/:basename.:extension",
  :path=> ":rails_root/public/:attachment/:id/:style/:basename.:extension"
  
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 1.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
