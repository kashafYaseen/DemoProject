ActiveAdmin.register Employee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  menu priority: 2
  action_item :view_site do
    link_to "Invite Employee", new_employee_invitation_path
  end
  # Uncomment all parameters which should be permitted for assignment
  permit_params :contact, :position, :manager_id, :restaurant_id, :first_name, :last_name, :email, :password
  #
  index do
    selectable_column
    column :name
    column :contact
    column :position
    column :restaurant
    actions
  end
  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :restaurant
      row :manager
      row :joining_date
      row :invitation_sent_at
      row :invitation_accepted_at
      row :invited_by
    end
  end

  form do |f|
    inputs "Employee Details" do
      input :first_name
      input :last_name
      input :email
      input :restaurant
      input :manager
      input :password
      actions
    end
  end

  filter :restaurant
  filter :manager
  filter :position
  filter :first_name
  filter :last_name
  filter :contact
  filter :email
  # or
  #
  # permit_params do
  #   permitted = [:contact, :position, :manager_id, :restaurant_id, :first_name, :last_name, :email, :password, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
