class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @shop = Shop.find(params[:shop_id])
    @review = Review.new(review_params)
    @review.shop = @shop
    @review.user = current_user
      if @review.save
        redirect_to shop_path(@shop)
      else
        render "shops/show"
  end

  def show

  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end

end
