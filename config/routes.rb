Rails.application.routes.draw do
  get '/', to: "welcome#welcome", as: "welcome"

  get '/login', to: "sessions#login", as: "login"

  post '/create', to: "sessions#create", as: "create_session"

  post '/logout', to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
end
