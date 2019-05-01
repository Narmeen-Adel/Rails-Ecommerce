class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.datetime :expireddate
      t.integer :price
      t.integer :precentage
      t.integer :usagenum
      t.integer :Dprice
      t.timestamps
    end
  end
end
