class CreateOrderedOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :ordered_options do |t|
      t.integer :quantity
      t.references :optional_item, null: false, foreign_key: true
      t.references :order_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
