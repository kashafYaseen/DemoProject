class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :rating_desc, default:0
      t.text :remarks
      t.datetime :time

      t.timestamps
    end
  end
end
