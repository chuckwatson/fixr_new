class BookingsController < ApplicationController

  def new
    @shop = Shop.find(params[:shop_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @job = Job.find(params[:booking][:job_id][1])
    @booking.job = @job
    @booking.user = current_user

    # if @booking.save
    #   redirect_to shops_path
    # else
    #   render 'shops/show'
    # end

  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: @job.name,
      amount: @job.price_cents,
      currency: 'gbp',
      quantity: 1
    }],
    success_url: order_url(@booking),
    cancel_url: order_url(@booking)
  )

  booking.update(checkout_session_id: session.id)
  redirect_to new_order_payment_path(@booking)

  end

  def index
    @user = current_user
    @bookings = @user.bookings
  end

  def show
    @booking = current_user.bookings.find(params[:id])
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
