class Customer < ActiveRecord::Base
  attr_accessible :address, :first_name, :last_name, :phone_number, :postal_code, :province_id

  belongs_to :province
  has_many :orders

   validates :address, :first_name, :last_name, :province_id, :postal_code, :presence => true
end
