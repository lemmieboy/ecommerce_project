class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :description
      t.string :name
      t.decimal :price
      t.integer :category_id
      t.string :image_filename

      t.timestamps
    end
  end
end
