class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.integer :menu_id
      t.string :menu_name

      t.timestamps
    end
  end
end
