class CreateOptionalItems < ActiveRecord::Migration[6.1]
  def change
    create_table :optional_items do |t|
      t.string :item_name

      t.timestamps
    end
  end
end
