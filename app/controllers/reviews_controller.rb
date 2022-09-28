class ReviewsController < ApplicationController
  def index
    @q = Review.ransack(params[:q])
    @pagy, @reviews =   pagy(@q.result(distinct: true), items: params[:per_page])
  end
end
