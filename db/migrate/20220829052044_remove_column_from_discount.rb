class RemoveColumnFromDiscount < ActiveRecord::Migration[6.1]
  def change
    remove_reference :discounts, :voucher, null: false, foreign_key: true
  end
end
