Rails.application.routes.draw do
  resources :comments
  get 'signup'  => 'users#new' 
  devise_for :users
  resources :movies
  resources :lists
  root 'lists#index'
end
