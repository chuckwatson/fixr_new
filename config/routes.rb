
  Rails.application.routes.draw do

  devise_for :users
  get 'favorites/update'
  resources :shops do #index #show #new/create #delete #update
    resources :reviews, only: [:new, :create, :destroy, :show]
    resources :jobs, only: [:new, :create, :destroy, :index, :show]
    resources :bookings, only: [:new, :create, :destroy, :index, :show]
  end
  # resources :users do
  #   resources :bookings, only: [:index]
  # end
  resources :bookings, only: [:show, :create] do
    resources :payments, only: :new
  end

  resource :user do
    resources :bookings, only: [:index, :show]
    resources :reviews, only: [:new, :create]
    end



  root to: 'shops#index'

end


