class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.integer :contact
      t.string :address

      t.timestamps
    end
  end
end
