class AddOrderVoucherColumnToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :order_voucher, null: false, foreign_key: true
  end
end
