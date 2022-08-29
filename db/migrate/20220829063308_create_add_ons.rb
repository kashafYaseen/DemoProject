class CreateAddOns < ActiveRecord::Migration[6.1]
  def change
    create_table :add_ons do |t|
      t.string :addon_name
      t.integer :addon_price

      t.timestamps
    end
  end
end
