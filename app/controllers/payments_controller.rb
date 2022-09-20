class PaymentsController < ApplicationController
  def list
    @payment = Payment.all
  end
end
