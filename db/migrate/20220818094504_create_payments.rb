class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :total_payment
      t.string :payment_type
      t.references :orders, null: false, foreign_key: true

      t.timestamps
    end
  end
end
