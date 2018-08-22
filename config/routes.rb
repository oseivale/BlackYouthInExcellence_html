Rails.application.routes.draw do
  resources :users, only: %i(new create)
  resource  :sessions, only: %i(new create destroy)
  resources :restaurants do            #NESTED ROUTE
    resources :reservations, only: %i(new index create show destroy)
  end

  # as an alternative, we could have passed an extra argument in our reservation path of the show page


  root 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
