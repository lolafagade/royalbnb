Rails.application.routes.draw do
  get 'castles/index'
  devise_for :users
  root to: 'pages#home'

  resources :castles, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
