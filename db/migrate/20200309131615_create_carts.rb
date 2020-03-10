class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.references :user, index:true
      t.references :item, index:true
      t.integer :quantity
      t.float :unit_price
      t.references :order, index:true


      t.timestamps
    end
  end
end
