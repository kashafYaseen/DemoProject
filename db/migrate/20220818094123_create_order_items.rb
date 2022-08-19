class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.text :orderItem_description
      t.references :orders, null: false, foreign_key: true

      t.timestamps
    end
  end
end
