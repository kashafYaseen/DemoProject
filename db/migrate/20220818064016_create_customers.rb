class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.text :customer_address
      t.integer :customer_contactNo
      t.string :customer_email

      t.timestamps
    end
  end
end
