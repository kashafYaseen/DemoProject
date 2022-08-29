class CreateMenuOptionalItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_optional_items do |t|
      t.references :menu_item, null: false, foreign_key: true
      t.references :optional_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
