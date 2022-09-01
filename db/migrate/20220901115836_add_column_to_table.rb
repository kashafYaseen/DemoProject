class AddColumnToTable < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :status, :integer, default: 0
    add_column :discounts, :disc_type, :integer, default: 0
  end
end
