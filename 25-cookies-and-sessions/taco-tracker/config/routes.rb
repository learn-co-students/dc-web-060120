Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/", to: "application#homepage", as: "homepage"
  get "/about", to: "application#about", as: "about"
  get "/hello/:name", to: "application#hello", as: "hello"
  # ^.             ^.               ^                   ^
  # HTTP Verb.    PATH            controller#method   helper_prefix
  
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#process_login"
  get "/logout", to: "sessions#logout"
  # get "/tacos", to: "tacos#index"
  # get "/tacos/:id", to: "tacos#show", as: "taco"
  resources :tacos
  resources :restaurants, only: [:index, :show]
  # get "/hi_dave", to: "tacos#index"
end
