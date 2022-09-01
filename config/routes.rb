Rails.application.routes.draw do
  root to: "flats#index"
  resources :flats
  devise_for :users

  get "/action", to: "flats#action"
  get "/anotheraction", to: "flats#anotheraction"
end
