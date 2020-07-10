Rails.application.routes.draw do
  get 'signup'  => 'users#new' 
  devise_for :users
  resources :movies
  resources :lists
  root 'lists#index'
end
