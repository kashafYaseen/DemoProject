ActiveAdmin.register Restaurant do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  menu priority: 1
  index do
    selectable_column
    column :name
    column :contact
    column :status
    column "Manager" do |m|
      
      if Employee.where(id: m.employee_ids).first.nil?
        Employee.where(id: m.employee_ids).first
      else
        Employee.where(id: m.employee_ids).first.manager
      end
    end
    column :restaurant_timings
    actions
  end

  filter :name
  filter :employees
  filter :restaurant_timings
  permit_params :name, :contact, :status
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :contact, :status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
