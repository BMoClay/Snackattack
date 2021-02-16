Rails.application.routes.draw do
  resources :favorites
  resources :snacks
  resources :users

  get "/me", to: "users#me"
  post "/login", to: "users#login"
  patch "/me", to: "users#update"
  delete "/me", to: "users#delete"
  post "/me", to: "users#stash"

  get "/favorites", to: "favorites#index"
  delete "/favorites", to: "favorites#delete"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
