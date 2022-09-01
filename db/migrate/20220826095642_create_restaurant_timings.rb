class CreateRestaurantTimings < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_timings do |t|
      t.datetime :opening_time
      t.datetime :closing_time
      t.integer :week_day, default:0
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
