class MenusController < ApplicationController
  def index
    @rest = current_employee.restaurant
    @menu = @rest.menus
  end
  def list
    # @menu = Menu.all
  end

  def show
    # @menu = Menu.find(params[:id])
  end

  def new
    @rest = current_employee.restaurant
    @menu = @rest.menus.new
    @menu.menu_timings.new
    @menu.menu_items.new
  end

  def create
    @rest = current_employee.restaurant
    @menu = @rest.menus.new(menu_params)
    respond_to do |format|
      if @menu.save
        format.html {redirect_to menus_index_path, notice: "Menu was successfully created."}
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

  def menuDeal
    @menu = Menu.find(params[:menu_id])
  end

  def menuItem
    @menu = Menu.find(params[:menu_id])
  end

  private
    def set_menu
      @menu = Menu.find(params[:id])
    end

    def menu_params
      params.require(:menu).permit(:menu_name, menu_timings_attributes: [:start_time, :_destroy])
    end
end
