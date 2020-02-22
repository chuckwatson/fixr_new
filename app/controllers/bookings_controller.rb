class BookingsController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @booking = Booking.new
  end

  def create
    @booking = Shop.new(booking_params)
    @shop = Shop.find(params[:shop_id])
    @booking.shop = @shop
    @booking.user = current_user
    if @booking.save
      redirect_to shop_booking_path(@shop, @booking)
    else
      render 'shops/show'
    end
  end

  def index
    @user = current_user
    @bookings = @user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_bookings_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
