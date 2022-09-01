ActiveAdmin.register PaymentCutoff do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  
  permit_params :admin_percent, :restaurant_percent, :payment_id
  index do
    selectable_column
    column "Admin Percentage", :admin_percent
    column "Restaurant Percentage", :restaurant_percent
    column "Payment Type", :payment
    #column "Restaurant", :restaurant
    # column "Order No." do |m|
    #   usr = Payment.find(m.order_id)
    # end
    actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:admin_percent, :admin_amount, :restaurant_percent, :restaurant_amount, :payment_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
