Rails.application.routes.draw do
  root to: "flats#index"
  resources :flats
  devise_for :users
end
