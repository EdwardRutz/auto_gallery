Rails.application.routes.draw do

  get 'sessions/new'

  root 'welcome#index'

  # Autos
  get '/search', to: 'autos#search', as: 'search'
  get '/sales_console', to: 'autos#sales_console', as: 'sales_console'

  # Users
  get '/dashboard', to: 'users#dashboard', as: 'dashboard'
  # get '/signup', to: 'users#new'


  # Welcome
  get '/contact', to: 'welcome#contact', as: 'contact'
  get '/about', to: 'welcome#about', as: 'about'

  # Access
  # get '/admin', to: 'access#menu', as: 'admin'
  # get 'access/menu'
  # get 'access/login', to: 'access#new'
  # post 'access/attempt_login'
  # get 'access/logout'

  # Sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :autos
  resources :users
  resources :welcome
end
