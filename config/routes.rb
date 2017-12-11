Rails.application.routes.draw do

  root 'welcome#index'

  get 'autos/search', to: 'autos#search', as: 'search'
  get 'autos/sales_console', to: 'autos#sales_console', as: 'sales_console'


  get 'users/dashboard', to: 'users#dashboard', as: 'dashboard'

  resources :autos
  resources :users
  resources :welcome
end
