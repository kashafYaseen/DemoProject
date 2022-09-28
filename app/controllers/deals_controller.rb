class DealsController < ApplicationController
  def index
    @rest = current_employee.restaurant
    @q = @rest.menus.ransack(params[:q])
    @pagy, @menus = pagy(@q.result(distinct: true), items: params[:per_page])
  end

  def new
    @deal = Deal.new
    @menu_item = @deal.menu_items.new
  end

  def create
    @deal = Deal.new(deal_params)
    byebug
    respond_to do |format|
      if @deal.save
        format.html {redirect_to deals_index_path, notice: "Menu was successfully created."}
      else
        format.html {render :new, status: :unprocessable_entity}
      end
    end
  end

  def edit
  end

  def update
  end

  def delete
  end


  private

    def deal_params
      params.require(:deal).permit(:deal_name, :deal_description, :deal_price,  menu_items_attributes: [:id, :MenuItemable_type, :MenuItemable_id, :menu_id])
    end

end
