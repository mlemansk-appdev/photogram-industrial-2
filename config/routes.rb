Rails.application.routes.draw do
  root "photos#index"
  
  

  devise_for :users

  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos
  #resources :users, only: :show

  get ":username/liked" => "photos#liked", as: :liked_photos
  get ":username" => "users#show", as: :user # This always has to be the last route since it is so general
end
