Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:new, :create, :edit, :update, :index]
 
end
