EnyumbaApp::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get "houses/new"

  get "landlords/new"

  

resources :clients
resources :landlords
resources :houses




  root to: 'static_pages#home'


  match '/help',    to: 'static_pages#help'
match '/logup',  to: 'clients#new'
  

end
