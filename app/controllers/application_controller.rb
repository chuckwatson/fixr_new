class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :add_header_text

  def favorite_text
    return @favorite_exists ? "fas fa-heart" : "far fa-heart"
  end

# def complete_text
#   return complete ? "complete" : "mark as complete"
# end

  helper_method :favorite_text
  # helper_method :complete_text



  def add_header_text
   @shops = Shop.all
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

end
