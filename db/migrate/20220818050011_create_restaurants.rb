class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.integer :restaurant_contactNo
      t.string :restaurant_status
      t.datetime :restaurant_timings

      t.timestamps
    end
  end
end
