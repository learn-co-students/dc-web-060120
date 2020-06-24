Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/", to: "application#homepage"
  get "/about_us", to: "application#about", as: "about"
  get "/hello/:name", to: "application#hello", as: "hello"
  # ^.             ^.               ^                   ^
  # HTTP Verb.    PATH            controller#method   helper_prefix
  
  # get "/tacos", to: "tacos#index"
  # get "/tacos/:id", to: "tacos#show", as: "taco"
  resources :tacos, only: [:index, :show, :new, :create]
  # get "/hi_dave", to: "tacos#index"
end
