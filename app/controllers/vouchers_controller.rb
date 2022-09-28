class VouchersController < ApplicationController
  def index
    @q = Voucher.ransack(params[:q])
    @pagy, @vouchers = pagy(@q.result(distinct: true), items: params[:per_page])
  end

  def new
    @voucher = Voucher.new
    @voucher.voucher_timelines.new
  end

  def create
    @voucher = Voucher.new(voucher_params)
    respond_to do |format|
      if @voucher.save
        format.html {redirect_to vouchers_index_path, notice: "Voucher created Successfully"}
      else
        format.html {render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @voucher = Voucher.find(params[:id])
  end

  def update
    @voucher = Voucher.find(params[:id])
    respond_to do |format|
      if @voucher.update(voucher_params)
        format.html {redirect_to vouchers_index_path, notice: "Voucher updated Successfully"}
      else
        format.html {render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @voucher = Voucher.find(params[:id])
    @voucher.destroy
  end

  private

  def voucher_params
    params.require(:voucher).permit(:promo_code, :discount_id, :status, voucher_timelines_attributes: [:id, :start_time, :end_time])
  end

end
