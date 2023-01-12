Rails.application.routes.draw do
  get 'dashboard/dashboard', to: 'dashboard#dashboard'
  devise_for :users
  root to: "pages#home"
  resources :portfolios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
