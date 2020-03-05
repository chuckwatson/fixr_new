module Shops
  class BookingsController < ApplicationController
    before_action :set_shop

    def index
        @shop = Shop.find(params[:shop_id])
        @bookings = @shop.bookings
        @review = Review.new
    end

    private

    def set_shop
      @shop = Shop.find(params[:shop_id])
    end
  end
end
