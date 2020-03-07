module Shops
  class BookingsController < ApplicationController
    before_action :set_shop

    def index
        @shop = Shop.find(params[:shop_id])
        @bookings = @shop.bookings
        @review = Review.new
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

    private

     def booking_params
    params.require(:booking).permit(:date, :job_id)
  end

    def set_shop
      @shop = Shop.find(params[:shop_id])
    end

  end
end
