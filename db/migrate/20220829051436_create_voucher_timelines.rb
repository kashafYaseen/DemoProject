class CreateVoucherTimelines < ActiveRecord::Migration[6.1]
  def change
    create_table :voucher_timelines do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :status
      t.references :voucher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
