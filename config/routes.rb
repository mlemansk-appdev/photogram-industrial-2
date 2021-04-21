Rails.application.routes.draw do
  root "photos#index"
  
  

  devise_for :users

  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos
  #resources :users, only: :show

  get ":username/liked" => "photos#liked", as: :liked_photos
  get ":username/feed" => "photos#feed", as: :feed_photos
  #get ":username/followers" => "photos#liked", as: :liked_photos
  #get ":username/following" => "photos#liked", as: :liked_photos      
  
  get ":username" => "users#show", as: :user # This always has to be the last route since it is so general
end
