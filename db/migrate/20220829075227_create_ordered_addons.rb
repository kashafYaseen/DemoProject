class CreateOrderedAddons < ActiveRecord::Migration[6.1]
  def change
    create_table :ordered_addons do |t|
      t.integer :quantity
      t.references :add_on, null: false, foreign_key: true
      t.references :order_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
