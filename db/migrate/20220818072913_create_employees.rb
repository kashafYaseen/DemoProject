class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :emp_name
      t.text :emp_address
      t.integer :emp_contactNo
      t.string :emp_email
      t.string :emp_position
      t.integer :manager_id

      t.timestamps
    end
  end
end
