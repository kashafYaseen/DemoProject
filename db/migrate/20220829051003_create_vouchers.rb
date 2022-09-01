class CreateVouchers < ActiveRecord::Migration[6.1]
  def change
    create_table :vouchers do |t|
      t.integer :promo_code
      t.integer :status, default:0
      t.references :discount, null: false, foreign_key: true

      t.timestamps
    end
  end
end
