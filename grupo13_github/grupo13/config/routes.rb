Rails.application.routes.draw do
  resources :restaurantes
  resources :platos
  resources :usuarios
  get '/restaurantes', to: 'restaurantes#index'
  post '/restaurantes', to: 'restaurantes#create' 
  get '/restaurantes/:id', to: 'restaurantes#show'
  get '/platos', to: 'platos#index'
  get '/usuarios', to: 'usuarios#index'
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
