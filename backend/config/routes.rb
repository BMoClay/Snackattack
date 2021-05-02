Rails.application.routes.draw do
  resources :favorites
  resources :snacks
  resources :users

  get "/me", to: "users#me"
  post "/login", to: "users#login"
  patch "/users/:id", to: "users#update"
  delete "/me", to: "users#delete"
  post "/me", to: "users#stash"
  get "/users/:id/favorites", to: "users#favorites"

  get "/favorites", to: "favorites#index"
  delete "/favorites", to: "favorites#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
