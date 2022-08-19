class CreateMenuItemsDeals < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items_deals do |t|
      t.references :menu_item, null: false, foreign_key: true
      t.references :deal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
