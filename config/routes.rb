Rails.application.routes.draw do
  
  resources :images
  devise_for :users
  
  root to: 'home#index'
  
  get 'about', to: 'home#about'
  get 'profile', to: 'home#profile'
  
  resources :details
  resources :accounts
  resources :portfolios
  resources :blogs
  

end
