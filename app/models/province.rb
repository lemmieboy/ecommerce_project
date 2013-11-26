class Province < ActiveRecord::Base
  attr_accessible :name, :province_id

  has_many :customers
end
