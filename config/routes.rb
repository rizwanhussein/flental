Rails.application.routes.draw do

  root to: "flats#home"

  resources :flats
  devise_for :users
end
