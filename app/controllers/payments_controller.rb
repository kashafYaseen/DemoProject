class PaymentsController < ApplicationController
  def list
    @payment = Payment.all
    @q = @payment.ransack(params[:q])
    @pagy, @payment = pagy(@q.result(distinct: true), items: params[:per_page])
  end
end
