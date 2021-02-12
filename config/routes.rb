Rails.application.routes.draw do
  resources :favorites
  resources :snacks
  resources :users

  get "/me", to: "users#me"
  post "/login", to: "users#login"
  patch "/me", to: "users#update"
  delete "/me", to: "users#delete"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
