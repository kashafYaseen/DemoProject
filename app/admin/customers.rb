ActiveAdmin.register Customer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  filter :orders
  permit_params :contact, :address, :first_name, :last_name, :email, :password, :encrypted_password
  
  # or
  #
  # permit_params do
  #   permitted = [:contact, :address, :first_name, :last_name, :email, :password, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
