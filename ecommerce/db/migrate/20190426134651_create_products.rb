class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :image
      t.float :price
      t.integer :quantity_in_stock
      t.text :description
      t.references :category, foreign_key: true
      t.references :brand, foreign_key: true
      # t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
