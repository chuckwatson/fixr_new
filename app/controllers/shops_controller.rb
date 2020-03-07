class ShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  # Geocode once front end begins
  def index
    @shops = Shop.geocoded

    @markers = @shops.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude,
        id: shop.id,
        image_url: helpers.asset_url('https://image.flaticon.com/icons/svg/1473/1473250.svg')
        # infoWindow: render_to_string(partial: "info_window", locals: { shop: shop })
      }
    end
  end


  # Update once bookings controller is done
  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)

    @shop.user = current_user
    if @shop.save
      redirect_to shops_path
    else
      render :new
    end
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  # Update show method once booking controller is done.
  def show
    @booking = Booking.new
    @shop = Shop.find(params[:id])
    @job = Job.where(shop: @shop.id)
    @review = Review.new
    @favorite_exists = Favorite.where(shop: @shop, user: current_user) == [] ? false : true
    # @bookings = Booking.where(job: @job, user: current_user)
    @jobs_with_prices = Job.where(shop: @shop).map do |job|
      ["#{job.name} £#{job.price.to_i}", job.id]

  end
end

  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to shops_path
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :address, :open_hours, :close_hours, :user_id, :photo)
  end

end
