class CreateMenuAddons < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_addons do |t|
      t.references :menu_item, null: false, foreign_key: true
      t.references :add_on, null: false, foreign_key: true

      t.timestamps
    end
  end
end
