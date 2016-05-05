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
  
  get 'userblog/:id' => 'blogs#user_index', as: 'userblog'
  
  get 'userportfolio/:id' => 'portfolios#user_index', as: 'userportfolio'
  get 'portfoliolist/:id' => 'portfolios#list', as: 'portfoliolist'

end
