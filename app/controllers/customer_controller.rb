class CustomerController < ApplicationController
  def index
    @rest = current_employee.restaurant
    @q = @rest.orders.ransack(params[:q])
    @pagy, @orders = pagy(@q.result(distinct: true), items: params[:per_page])
  end
end
