class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :ratings, :rating, :rating_desc
  end
end
