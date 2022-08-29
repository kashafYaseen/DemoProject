class AddColumnToVoucher < ActiveRecord::Migration[6.1]
  def change
    add_reference :vouchers, :discount, null: false, foreign_key: true
  end
end
