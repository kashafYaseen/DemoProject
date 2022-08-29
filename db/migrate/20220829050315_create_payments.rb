class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :total_payment
      t.string :payment_type

      t.timestamps
    end
  end
end
