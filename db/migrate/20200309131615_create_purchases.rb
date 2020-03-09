class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.references :user, index:true
      t.references :item, index:true
      t.integer :quantity
      t.decimal :unite_price
      t.string :stripe_id

      t.timestamps
    end
  end
end
