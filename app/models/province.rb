class Province < ActiveRecord::Base
  attr_accessible :name, :province_id

  has_many :customers

  validates :name, :province_id, :presence => true
end
