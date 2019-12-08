Rails.application.routes.draw do
  resources :platos do
    resources :platos
    resources :ordenes
    resources :comentarios
    resources :restaurantes
  end
  resources :ordenes do
    resources :platos
    resources :ordenes
    resources :comentarios
    resources :restaurantes
  end
  resources :comentarios do
    resources :platos
    resources :ordenes
    resources :comentarios
    resources :restaurantes
  end

  resources :restaurantes do
    resources :platos
    resources :ordenes
    resources :comentarios
    resources :restaurantes
  end

  
 
  devise_for :users
  resources :users, only: [:show] do
    resources :platos
    resources :ordenes
    resources :comentarios
    resources :restaurantes
  end
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
