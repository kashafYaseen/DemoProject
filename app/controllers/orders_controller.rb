class OrdersController < ApplicationController
  def list
    @rest = current_employee.restaurant
    @q = @rest.orders.ransack(params[:q])
    @pagy, @orders = pagy(@q.result(distinct: true), items: params[:per_page])
  end

  def show
    @order = Order.find(params[:id])
  end

  def delete
    @order = Order.find(params[:id])
    @order.destroy
  end
end
