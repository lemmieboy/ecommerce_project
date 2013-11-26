class Customer < ActiveRecord::Base
  attr_accessible :address, :first_name, :last_name, :phone_number, :postal_code, :province_id
end
