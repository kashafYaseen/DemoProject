class RemoveColumnFromTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurants, :status
    remove_column :discounts, :disc_type
  end
end
