Rails.application.routes.draw do
  
  get 'signup'  => 'users#new'
  devise_for :users

  resources :lists do
    resources :movies
    # resources :comments
  end

  root 'lists#index'  

end