Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'user/registrations' }
  root 'home_page#index'
  resources :disciplines
  resources :friendships, only: [:destroy]
  resources :users do
    resources :trainings
  end
  get "/trainings", to: "trainings#index"
  get "training/search", to: "trainings#search"
  post "training/search_new", to: "trainings#search_training"
  get "my_profile", to: "users#my_profile"
  get "my_friends", to: "users#my_friends"
  post "friends_search", to: "friendships#search"
  post "add_friend", to: "friendships#add_friend"
end
