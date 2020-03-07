class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :add_header_text

  def favorite_text
    return @favorite_exists ? "fas fa-heart" : "far fa-heart"
  end

  helper_method :favorite_text


  def add_header_text
   @shops = Shop.all
  end

end
