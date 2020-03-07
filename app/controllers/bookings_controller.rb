class BookingsController < ApplicationController

  def new
    @shop = Shop.find(params[:shop_id])
    @booking = Booking.new
  end

  # def create
  #   @booking = Booking.new(booking_params)
  #   @shop = Shop.find(params[:shop_id])
  #   @job = Job.find(params[:job_id])
  #   @booking.job = @job
  #   @booking.shop = @shop
  #   @booking.user = current_user

  #   if @booking.save
  #     redirect_to shop_booking_path(@shop, @booking)
  #   else
  #     render 'shops/show'
  #   end
  # end

  def index
    @bookings = Booking.where(user: current_user)

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
    params.require(:booking).permit(:date, :job_id)
  end


end
