Rails.application.routes.draw do
  resources :favorites
  resources :snacks
  resources :users

  get "/me", to: "users#me"
  post "/login", to: "users#login"
  patch "/me", to: "users#update"
  delete "/me", to: "users#delete"

  # get "/snacks", to: "snacks#index"
  # get "/snacks", to: "snacks#show"
  # get "/me", to: "users#stash"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
