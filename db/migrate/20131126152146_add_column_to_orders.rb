class CreateOrders < ActiveRecord::Migration
  def change
    add_column :orders, :tax_rate, :decimal
    add_column :orders, :customer_id, :integer
    add_column :orders, :status, :string
  end
end
