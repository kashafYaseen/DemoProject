class CreateAddOns < ActiveRecord::Migration[6.1]
  def change
    create_table :add_ons do |t|
      t.string :addOn_name
      t.integer :addOn_price

      t.timestamps
    end
  end
end
