class CreatePaymentCutoffs < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_cutoffs do |t|
      t.integer :admin_percent
      t.integer :admin_amount
      t.integer :restaurant_percent
      t.integer :restaurant_amount
      t.references :payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
