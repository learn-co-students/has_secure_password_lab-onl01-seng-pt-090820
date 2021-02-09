Rails.application.routes.draw do
  resources :users

  get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#create'
  get '/welcome', to: 'welcome#new'
end