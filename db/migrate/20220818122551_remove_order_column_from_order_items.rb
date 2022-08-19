class RemoveOrderColumnFromOrderItems < ActiveRecord::Migration[6.1]
  def change
    remove_reference :order_items, :orders, null: false, foreign_key: true
  end
end
