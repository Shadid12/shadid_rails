Rails.application.routes.draw do
  
  root 'static#index'
  get 'sessions/new'

  resources :users
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  #session routes
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
