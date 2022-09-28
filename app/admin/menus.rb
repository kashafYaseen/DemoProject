ActiveAdmin.register Menu do
  config.remove_action_item(:new)
  menu priority: 3
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :menu_name, :restaurant_id
  index do
    selectable_column
    column :name
    column :restaurant
    column :menu_timings
    actions
  end
  filter :restaurant
  filter :menu_timings
  filter :menu_name
  # or
  #
  # permit_params do
  #   permitted = [:menu_name, :restaurant_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
