Rails.application.routes.draw do
  devise_for :users
  root 'home_page#index'
  resources :disciplines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :trainings
  end
  get "/trainings", to: "trainings#index"
end
