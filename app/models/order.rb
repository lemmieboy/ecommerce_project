class Order < ActiveRecord::Base
  attr_accessible :customer_id, :status, :tax_rate
  has_many :line_items
  has_many :products, :through => :line_items
  belongs_to :customer

  validates :tax_rate, :status, :presence => true


end
