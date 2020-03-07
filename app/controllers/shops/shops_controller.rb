module Shops

class ShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

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

 end
end
