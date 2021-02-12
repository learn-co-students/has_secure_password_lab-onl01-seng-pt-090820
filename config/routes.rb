Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

post '/login', to: 'sessions#create'
post '/', to: 'users#create'
get '/newuser', to: 'users#new'
end
