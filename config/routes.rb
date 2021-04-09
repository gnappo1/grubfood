Rails.application.routes.draw do
  devise_for :rails
  devise_for :users
  resources :menus
  resources :reviews
  resources :orders
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
