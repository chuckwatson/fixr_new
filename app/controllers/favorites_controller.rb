class FavoritesController < ApplicationController

  def update
    favorite = Favorite.where(shop: Shop.find(params[:shop]), user: current_user)
    if favorite == []
      Favorite.create(shop: Shop.find(params[:shop]), user: current_user)
      @favorite_exists = true
    else
      favorite.destroy_all
      @favorite_exists = false
  end

  respond_to do |format|
  format.html { redirect_to shop_path(params[:shop]) }
  format.js {}
    end
  end
end
