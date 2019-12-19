Rails.application.routes.draw do
  resources :stats
  resources :image_details
  resources :images
  resources :profiles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
