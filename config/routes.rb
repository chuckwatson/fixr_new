Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :shops do #index #show #new/create #delete #update
    resources :bookings, only: [:new, :create, :show]
  end

  resources :shops do #index #show #new/create #delete #update
    resources :reviews, only: [:new, :create, :destroy]
  end

  resources :shops do #index #show #new/create #delete #update
    resources :services, only: [:new, :create, :destroy]
  end

  resources :users do
    resources :bookings, only: [:index]
  end

end
