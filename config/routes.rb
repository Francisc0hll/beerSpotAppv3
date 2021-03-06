Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'locations/get_location'
  get 'locations/find_address'
  resources :beers
  
  resources :beer_spots do
    resources :comments, only: [:create]
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'beer_spots#index'
end
