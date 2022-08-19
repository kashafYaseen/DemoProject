class CreateOrderVouchers < ActiveRecord::Migration[6.1]
  def change
    create_table :order_vouchers do |t|
      t.integer :promo_code
      t.string :status
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
