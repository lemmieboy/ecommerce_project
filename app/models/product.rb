class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :image_filename, :name, :price

  belongs_to :category
  has_many :line_items
  has_many :orders, :through => :line_items
  
  validates :description, :name, :price, :presence => true
  validates :price, :numericality => true
end
