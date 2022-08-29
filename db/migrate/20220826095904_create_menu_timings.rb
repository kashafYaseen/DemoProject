class CreateMenuTimings < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_timings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :week_day, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
