Rails.application.routes.draw do

  root 'welcome#index'

  get '/search', to: 'autos#search', as: 'search'
  get '/sales_console', to: 'autos#sales_console', as: 'sales_console'


  get '/dashboard', to: 'users#dashboard', as: 'dashboard'


  get '/contact', to: 'welcome#contact', as: 'contact'


  resources :autos
  resources :users
  resources :welcome
end
