Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'user/registrations' }
  root 'home_page#index'
  resources :disciplines
  resources :users do
    resources :trainings
  end
  get "/trainings", to: "trainings#index"
  get "training/search", to: "trainings#search"
  post "training/search_new", to: "trainings#search_training"
  get "my_profile", to: "users#my_profile"
  resources :places
end
