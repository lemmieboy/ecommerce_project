class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :tax_rate
      t.integer :customer_id
      t.string :status

      t.timestamps
    end
  end
end
