class ChangeReferenceInTable < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :restaurant, null: true, foreign_key: true
  end
end
