class DropTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :week_days
    drop_table :order_statuses
  end
end
