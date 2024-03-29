Rails.application.routes.draw do
  resources :devices
  resources :restaurants
  root 'restaurants#index'
end
