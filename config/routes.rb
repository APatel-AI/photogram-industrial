Rails.application.routes.draw do

  root to: "photos#index"

  devise_for :users
  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos

  get ":username/liked" => "users#liked", as: :liked
  get ":username/feed" => "users#feed", as: :user_feed
  get ":username/followers" => "users#followers", as: :user_followers
  get ":username/following" => "users#following", as: :user_following


  # resources :users, only: :show
  get "/:username" => "users#show", as: :user

end
