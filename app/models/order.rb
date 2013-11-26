class Order < ActiveRecord::Base
  attr_accessible :customer_id, :order_price, :product_id, :quantity
  belongs_to :customer
  has_one :product
end
