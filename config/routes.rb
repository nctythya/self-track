Rails.application.routes.draw do
  get 'dashboard/dashboard', to: 'dashboard#dashboard'
  get 'popup', to: 'pages#popup'
  get 'popform', to: 'pages#popform'
  get 'profile', to: 'pages#profile'
  devise_for :users
  root to: "pages#home"
  resources :portfolios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
