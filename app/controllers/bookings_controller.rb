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
      success_url: shop_booking_url([:shop_id],@booking),
      cancel_url: my_bookings_url(@booking)
      )

    @booking.update(checkout_session_id: session.id)
    redirect_to new_shop_booking_payment_path(params[:shop_id], @booking)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def my_bookings
    @bookings = current_user.bookings
  end

  def booking_complete
  @booking = Booking.find(params[:id])
  if @booking.job_complete = true

  respond_to do |format|
  format.html { redirect_to my_bookings_path }
  format.js {}
    end
  end
end




  #  def update
  #   @booking = Booking.find(params[:id])
  #   @booking.update(job_complete: true)
  # end

  private

  def booking_params
    params.require(:booking).permit(:date, :job_id)
  end

end
