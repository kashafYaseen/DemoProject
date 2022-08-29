class CreateDealItems < ActiveRecord::Migration[6.1]
  def change
    create_table :deal_items do |t|
      t.references :DealItemable, polymorphic: true, null: false
      t.references :deal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
