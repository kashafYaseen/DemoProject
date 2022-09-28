ActiveAdmin.register Customer do
  config.remove_action_item(:new)
  menu priority: 4
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
    actions
  end
  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :address
      row :contact
    end
  end

  form do |f|
    inputs "Customer Details" do
      input :first_name
      input :last_name
      input :email
      input :address
      input :contact
      actions
    end
  end

  filter :orders
  filter :first_name
  filter :last_name
  filter :contact
  filter :email
  filter :address
  # or
  #
  # permit_params do
  #   permitted = [:contact, :address, :first_name, :last_name, :email, :password, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
