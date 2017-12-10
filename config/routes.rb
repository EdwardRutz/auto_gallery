Rails.application.routes.draw do

  root 'pages#home'

  resources :autos
  resources :users
  resources :pages
end
