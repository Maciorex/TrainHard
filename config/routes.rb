Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'user/registrations'}
  root 'home_page#index'
  resources :disciplines
  resources :users do
    resources :trainings
  end
  get "/trainings", to: "trainings#index"
end
