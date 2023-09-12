Rails.application.routes.draw do
  resources :blogs
  resources :contactos
  devise_for :users
  get 'comunidad', to: 'visitors#comunidad'
  get 'contacto', to: 'visitors#contacto'
  get 'contacto/confirmado', to: 'contactos#confirmado'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "visitors#index"

  #devise_for :users , path_names: {
  #  sign_up: '/ee00442f89b589d2120f4141a415dded'
  #}
 
end
