class BookingsController < ApplicationController

  def new
    @shop = Shop.find(params[:id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @job = Job.find(params[:booking][:job_id][1])
    @booking.job = @job
    @booking.user = current_user

    if @booking.save
      redirect_to shops_path
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
    params.require(:booking).permit(:date, :job_id, :user_id)
  end

end
