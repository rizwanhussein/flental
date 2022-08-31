Rails.application.routes.draw do

  resources :flats
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/action", to: "flats#action"
  get "/anotheraction", to: "flats#anotheraction"

end
