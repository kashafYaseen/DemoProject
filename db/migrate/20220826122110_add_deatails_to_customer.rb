class AddDeatailsToCustomer < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
    add_column :customers, :email, :string
    add_column :customers, :password, :string
  end
end
