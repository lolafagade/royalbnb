Rails.application.routes.draw do
  get 'bookings/create'
  get 'bookings/new'
  get 'booking/create'
  get 'booking/new'
  devise_for :users
  root to: 'pages#home'

  resources :castles, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # AS RENTER
  resources :castles, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  # AS OWNER
  resources :my_castles, only: [:index, :new, :create]

  # AS BOTH
  resources :bookings, only: [:index] do
    # AS OWNER
    member do
      patch :confirm
      patch :refuse
    end
  end
end

