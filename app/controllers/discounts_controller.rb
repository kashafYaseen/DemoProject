class DiscountsController < ApplicationController
  def index
    @rest = current_employee.restaurant
    @q = @rest.discounts.ransack(params[:q])
    @pagy, @disc = pagy(@q.result(distinct: true), items: params[:per_page])
  end

  def new
    @rest = current_employee.restaurant
    @disc = @rest.discounts.new
  end

  def create
    @rest = current_employee.restaurant
    @disc = @rest.discounts.new(discount_params)
    respond_to do |format|
      if @disc.save
        format.html {redirect_to discounts_index_path, notice: "Discount created Successfully"}
      else
        format.html {render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @disc = Discount.find(params[:id])
  end

  def update
    @disc = Discount.find(params[:id])
    respond_to do |format|
      if @disc.update(discount_params)
        format.html {redirect_to discounts_index_path, notice: "Discount updated Successfully"}
      else
        format.html {render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @disc = Discount.find(params[:id])
    @disc.destroy
  end

  private

  def discount_params
    params.require(:discount).permit(:disc_percent, :disc_type)
  end
end
