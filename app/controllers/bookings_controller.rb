class BookingsController < ApplicationController


  def index
    @shop = Shop.find(params[:shop_id])
    @bookings = @shop.bookings

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
      success_url: my_bookings_url(@booking),
      cancel_url: my_bookings_url(@booking)
      )

    @booking.update(checkout_session_id: session.id)
    redirect_to new_shop_booking_payment_path(params[:shop_id],@booking)
  end

  def my_bookings
    @bookings = current_user.bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :job_id)
  end

end
