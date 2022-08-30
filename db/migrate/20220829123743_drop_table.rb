class DropTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :admin_users
    drop_table :super_admins
  end
end
