class RemoveOrderColumnFromPayment < ActiveRecord::Migration[6.1]
  def change
    remove_reference :payments, :orders, null: false, foreign_key: true
  end
end
