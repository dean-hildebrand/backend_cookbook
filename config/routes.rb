Rails.application.routes.draw do
resources :users, only: [:index, :show, :create]
resources :recipes
post '/favoriterecipe', to: 'recipes#favorite'

resources :ingredients
post '/login', to: 'users#login'

end
