Rails.application.routes.draw do
  
  resources :comments
  root "photos#index"
  resources :photos
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
