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
        respond_to do |format|
          format.html { redirect_to shop_path(@shop) }
          format.js  # <-- will render `app/views/reviews/create.js.erb`
        end
        # redirect_to shop_path(@shop)
      else
        respond_to do |format|
          format.html { render 'shops/show' }
          format.js
          render "shops/show"
        end
      end
  end

  # def show

  # end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end

end
