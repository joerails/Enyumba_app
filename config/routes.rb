EnyumbaApp::Application.routes.draw do
  get "clients/new"

  root to: 'static_pages#home'

  match '/help',    to: 'static_pages#help'
match '/logup',  to: 'clients#new'
  

end
