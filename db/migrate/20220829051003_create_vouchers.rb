class CreateVouchers < ActiveRecord::Migration[6.1]
  def change
    create_table :vouchers do |t|
      t.integer :promo_code
      t.string :status

      t.timestamps
    end
  end
end
