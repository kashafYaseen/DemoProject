class OrdersController < ApplicationController
  def list
    @rest = current_employee.restaurant
    @q = @rest.orders.ransack(params[:q])
    @pagy, @order = pagy(@q.result(distinct: true), items: params[:per_page])
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
