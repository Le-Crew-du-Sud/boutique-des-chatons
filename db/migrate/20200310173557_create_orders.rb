class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, index:true
      t.references :item, index:true
      t.integer :quantity
      t.float :unit_price
      t.string :stripe_id
      t.timestamps
    end
  end
end
