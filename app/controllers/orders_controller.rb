class OrdersController < ApplicationController
  def list
    @rest = current_employee.restaurant
    @order = @rest.orders
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
