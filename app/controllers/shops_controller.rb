class ShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  # Geocode once front end begins
  def index
    @shops = Shop.all
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
    @shop = Shop.find(params[:id])
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
    params.require(:shop).permit(:name, :address, :open_hours, :close_hours, :user_id)
  end
end
