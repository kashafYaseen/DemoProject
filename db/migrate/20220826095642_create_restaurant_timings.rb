class CreateRestaurantTimings < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_timings do |t|
      t.datetime :opening_time
      t.datetime :closing_time
      t.references :week_day, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
