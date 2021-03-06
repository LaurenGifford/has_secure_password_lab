Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Login
  # get '/users/login', to: 'users#login', as: 'login'
  # post '/login', to: 'users#login'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'


  # Signup
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'

  root 'welcome#home'
end
