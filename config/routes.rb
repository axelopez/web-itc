Rails.application.routes.draw do
  resources :contactos
  devise_for :users
  get 'comunidad', to: 'visitors#comunidad'
  get 'contacto', to: 'visitors#contacto'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "visitors#index"
end
