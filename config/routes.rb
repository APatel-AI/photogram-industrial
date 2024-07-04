Rails.application.routes.draw do

  root "photos#index"



  devise_for :users
  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos

  get ":username/liked" => "users#liked", as: :liked

  # resources :users, only: :show
  get "/:username" => "users#show", as: :user

end
