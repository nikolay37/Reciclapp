Rails.application.routes.draw do
  resources :tasks
  resources :venta
  resources :puntoecologicos
  resources :redencions
  resources :meta
  resources :recoleccions
  resources :retos
  resources :retousuarios
  resources :detalleparametros
  resources :parametros
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "usuarios#show"
end
