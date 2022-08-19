class CreateDeals < ActiveRecord::Migration[6.1]
  def change
    create_table :deals do |t|
      t.string :deal_name
      t.text :deal_item
      t.integer :deal_price
      t.references :discount, null: false, foreign_key: true

      t.timestamps
    end
  end
end
