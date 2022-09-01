ActiveAdmin.register Customer do
  config.remove_action_item(:new)
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :contact, :address, :first_name, :last_name, :email
  index do
    selectable_column
    column :name
    column :email
    column :contact
    column :address
    column :order_id
    actions
  end

  
  #filter :orders
  # or
  #
  # permit_params do
  #   permitted = [:contact, :address, :first_name, :last_name, :email, :password, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
