Rails.application.routes.draw do

  root 'welcome#index'

  # Autos
  get '/search', to: 'autos#search', as: 'search'
  get '/sales_console', to: 'autos#sales_console', as: 'sales_console'


  # Users
  get '/dashboard', to: 'users#dashboard', as: 'dashboard'

  # Welcome
  get '/contact', to: 'welcome#contact', as: 'contact'
  get '/about', to: 'welcome#about', as: 'about'

  resources :autos
  resources :users
  resources :welcome
end
