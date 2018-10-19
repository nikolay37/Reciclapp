Rails.application.routes.draw do
  resources :venta
  resources :puntoecologicos
  resources :redencions
  resources :recoleccions
  resources :meta
  resources :detalleparametros
  resources :parametros
  resources :retousuarios
  resources :retos
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
