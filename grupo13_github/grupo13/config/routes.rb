Rails.application.routes.draw do
  resources :platos
  resources :usuarios
  get '/platos', to: 'platos#index'
  get '/usuarios', to: 'usuarios#index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 