class BookingsController < ApplicationController


  def new
    @shop = Shop.find(params[:shop_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @job = Job.find(params[:booking][:job_id])
    @booking.job = @job
    @booking.user = current_user
    @booking.state = 'pending'
    @booking.save


  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: @job.name,
      amount: @job.price_cents,
      currency: 'gbp',
      quantity: 1
    }],
    success_url: booking_url(@booking),
    cancel_url: booking_url(@booking)
  )

    @booking.update(checkout_session_id: session.id)
    redirect_to new_booking_payment_path(@booking)


  end

  def index
    @review = Review.new
    @user = current_user
    @bookings = @user.bookings
    @orders = @user.shops.first.bookings
    # if @bookings.job_id == @jobs.job_id
    #   return
    # end
# raise
    # @job = @booking.job
    # @shop = @job.shop
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
    params.require(:booking).permit(:date, :job_id, :user_id, :shop_id)
  end

end
