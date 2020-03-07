
  Rails.application.routes.draw do

  devise_for :users
  get 'favorites/update'

  scope module: 'shops' do
    resources :shops, only: [:show, :create] do
    resource :reviews, only: [:new, :create, :show, :destroy] #index #show #new/create #delete #update
      resources :bookings, only: [:new, :create, :destroy, :index, :show]
    end
  end

  resources :shops do #index #show #new/create #delete #update
    resources :reviews, only: [:new, :create, :destroy, :show]
    resources :jobs, only: [:new, :create, :destroy, :index, :show]
    resources :bookings, only: [:new, :create, :destroy, :index, :show]
  end
  # resources :users do
  #   resources :bookings, only: [:index]
  # end
  resources :bookings, only: [:index, :show, :create] do
    resources :payments, only: :new
  end

  resources :reviews, only: [:new, :create]

  root to: 'shops#index'

end


