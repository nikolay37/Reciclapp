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
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'sign_in' => 'devise/sessions#new'
  #devise_for :users, :controllers => { registrations: 'registrations' }
  root 'main#index'
end
