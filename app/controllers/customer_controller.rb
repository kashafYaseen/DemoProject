class CustomerController < ApplicationController
  def index
    @rest = current_employee.restaurant
    @order = @rest.orders
  end
end
