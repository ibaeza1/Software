Rails.application.routes.draw do
  resources :platos
  resources :ordenes
  resources :comentarios
  resources :restaurantes
  get '/restaurantes', to: 'restaurantes#index'
  post '/restaurantes/new', to: 'restaurantes#create' 
  get '/restaurantes/new', to: 'restaurante/#index'
  get '/restaurantes/:id', to: 'restaurantes#show'
  get '/restaurantes/:id', to: 'restaurantes#edit'
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
