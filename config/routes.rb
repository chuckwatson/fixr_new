Rails.application.routes.draw do


  get 'favorites/update'
  devise_for :users
  root to: 'pages#home'

  resources :shops do #index #show #new/create #delete #update
    resources :bookings, only: [:new, :create, :show]
  end

  resources :shops do #index #show #new/create #delete #update
    resources :reviews, only: [:new, :create, :destroy]
  end

  resources :shops do #index #show #new/create #delete #update
    resources :jobs, only: [:new, :create, :destroy, :index, :show]
  end

  resources :users do
    resources :bookings, only: [:index]
end

resources :shops do
  resources :bookings, only: [:new, :create, :destroy, :index, :show]
end

end
