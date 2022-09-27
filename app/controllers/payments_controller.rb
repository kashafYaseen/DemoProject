class PaymentsController < ApplicationController
  def list
    @payments = Payment.all
    @q = @payments.ransack(params[:q])
    @pagy, @payments = pagy(@q.result(distinct: true), items: params[:per_page])
  end
end
