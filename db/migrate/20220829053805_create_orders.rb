class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.text :order_descr
      t.references :customer, null: false, foreign_key: true
      t.references :voucher, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.references :order_status, null: false, foreign_key: true
      t.references :rating, null: true, foreign_key: true

      t.timestamps
    end
  end
end
