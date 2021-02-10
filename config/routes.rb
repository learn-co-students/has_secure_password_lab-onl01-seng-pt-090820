Rails.application.routes.draw do
  resources :users
  resources :sessions
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/signup' => 'users#new'
end
