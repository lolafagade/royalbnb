Rails.application.routes.draw do
  root to: 'pages#home'

  get "castles/:id", to: "castles#show"

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

