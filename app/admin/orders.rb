ActiveAdmin.register Order do
  config.remove_action_item(:new)
  menu priority: 5
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :order_descr, :customer_id, :voucher_id, :payment_id, :restaurant_id, :order_status_id, :rating_id
  index do
    selectable_column
    column :customer
    column :restaurant
    column :order_descr
    column :rating
    column :payment
    column :voucher
    actions
  end
  filter :customer
  filter :voucher
  filter :restaurant
  filter :order_status
  filter :order_descr
  # or
  #
  # permit_params do
  #   permitted = [:order_descr, :customer_id, :voucher_id, :payment_id, :restaurant_id, :order_status_id, :rating_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
