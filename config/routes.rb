Rails.application.routes.draw do
  resources :users, only: %i(new create)
  resources :restaurants
  resource  :sessions, only: %i(new create)
  root 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
