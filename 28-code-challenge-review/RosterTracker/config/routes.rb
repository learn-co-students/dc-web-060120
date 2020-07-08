Rails.application.routes.draw do

  # get "/students", to: "students#index"
  # get "/students/:id", to: "students#show", as: "student"
  # delete "/students/:id", to: "students#show", as: "student"
  resources :students

  get "/delete_this_student/:id", to: "students#destroy", as: "erase"
end
