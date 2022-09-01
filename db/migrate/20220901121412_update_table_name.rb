class UpdateTableName < ActiveRecord::Migration[6.1]
  def change
    rename_table :ratings, :reviews
    rename_column :orders, :rating_id, :review_id
  end
end
