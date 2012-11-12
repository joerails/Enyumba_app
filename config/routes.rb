EnyumbaApp::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config


 

  resources :sessions, only: [:new, :create, :destroy]

resources :clients
resources :landlords
resources :houses




  root to: 'static_pages#home'


 match '/help',    to: 'static_pages#help'
match '/logup',  to: 'clients#new'
match '/login',  to: 'sessions#new'
  match '/logout', to: 'sessions#destroy', via: :delete
  

end
