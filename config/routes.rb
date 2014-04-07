CatsInc::Application.routes.draw do

  # Leave this line here. It's for devise.
  devise_for :users

  # Add the nessessary routes here.

  resources :items 
  resources :stock_alerts, only: ["create", "destroy", "show", "new"]
  resources :purchases, only: ["create", "new"]

  get "index", to: 'homepage#index'
  get "index", to: 'admin/dashboard'

end
