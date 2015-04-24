Rails.application.routes.draw do
  devise_for :users

  root 'pages#index'
  
  resources :users, only: [:new, :create, :edit, :update, :index]
 
end
