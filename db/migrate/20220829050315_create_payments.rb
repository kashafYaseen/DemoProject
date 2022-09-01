class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :total_payment
      t.integer :payment_type, default:0

      t.timestamps
    end
  end
end
