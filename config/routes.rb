Rails.application.routes.draw do
  resources :platos
  resources :ordenes
  resources :comentarios
  resources :restaurantes

  
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
