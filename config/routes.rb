Rails.application.routes.draw do
  root "photos#index"
  
  

  devise_for :users

  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos
  #resources :users, only: :show

  get "/:username" => "users#show" # This always has to be the last route since it is so general
end
