
  Rails.application.routes.draw do

  devise_for :users
  get 'favorites/update'

  # scope module: 'shops' do
  #   resources :shops, only: [:show, :create] do
  #   resource :reviews, only: [:new, :create, :show, :destroy] #index #show #new/create #delete #update
  #     resources :bookings, only: [:new, :create, :destroy, :index, :show]
  #   end
  # end

  resources :shops do #index #show #new/create #delete #update
    resources :reviews, only: [:new, :create, :destroy, :show]
    resources :jobs, only: [:new, :create, :destroy, :index, :show]
    resources :bookings, only: [:new, :create, :destroy, :index, :show, :update] do
      resources :payments, only: :new
    end
  end
  # resources :users do
  #   resources :bookings, only: [:index]
  # end

  resources :reviews, only: [:new, :create]

  get "my_bookings", to: "bookings#my_bookings"

#  resources :bookings do
#     member do
#         patch :toggle_status
#     end
# end



  root to: 'pages#home'

end


