class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def favorite_text
    return @favorite_exists ? "far fa-heart" : "fas fa-heart"
  end

  helper_method :favorite_text
end
