class AddUserableToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :userable, polymorphic: true, null: false
  end
end
