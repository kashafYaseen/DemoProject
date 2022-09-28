class CreateFoodItems < ActiveRecord::Migration[6.1]
  def change
    create_table :food_items do |t|
      t.string :item_name
      t.integer :item_price
      t.references :discount, null: true, foreign_key: true

      t.timestamps
    end
  end
end
