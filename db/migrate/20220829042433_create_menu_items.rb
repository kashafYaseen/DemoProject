class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.references :MenuItemable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
