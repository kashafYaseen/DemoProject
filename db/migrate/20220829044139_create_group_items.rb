class CreateGroupItems < ActiveRecord::Migration[6.1]
  def change
    create_table :group_items do |t|
      t.string :groupItem_name

      t.timestamps
    end
  end
end
