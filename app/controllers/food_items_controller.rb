class FoodItemsController < ApplicationController
  def index
    @rest = current_employee.restaurant
    @q = @rest.menus.ransack(params[:q])
    @pagy, @menu = pagy(@q.result(distinct: true), items: params[:per_page])
  end

  def new
    @food_item = FoodItem.new
  end

  def create
    @food_item = FoodItem.create(food_params)
    respond_to do |format|
      if @food_item.save
        format.html {redirect_to food_items_index_path, notice: "Item created Successfully"}
      else
        format.html {render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @food_item = FoodItem.find(params[:id])
  end

  def update
    @food_item = FoodItem.find(params[:id])
    respond_to do |format|
      if @food_item.update(food_params)
        format.html {redirect_to food_items_index_path, notice: "Item updated Successfully"}
      else
        format.html {render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @food_item = FoodItem.find(params[:id])
    @food_item.destroy
  end

  private

  def food_params
    params.require(:food_item).permit(:item_name, :item_price, :discount_id, :group_item_id)
  end
end
