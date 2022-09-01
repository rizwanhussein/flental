Rails.application.routes.draw do
  root to: "flats#home"

  resources :flats do
    resources :bookings, only: [:create, :new]
  end
  devise_for :users
  resources :bookings, only: :index

  get "/action", to: "flats#action"
  get "/anotheraction", to: "flats#anotheraction"
end
