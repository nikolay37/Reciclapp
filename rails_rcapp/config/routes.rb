Rails.application.routes.draw do
  devise_for :users
  resources :detalleparametros
  resources :parametros
  resources :venta
  resources :puntoecologicos
  resources :redencions
  resources :recoleccions
  resources :meta
  resources :retousuarios
  resources :retos
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
