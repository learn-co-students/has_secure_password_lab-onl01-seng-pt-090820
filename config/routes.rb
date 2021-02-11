Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/new' => 'users#new'
  get '/login' => 'users#login'
  get '/home' => 'users#home'
  get '/new' => 'sessions#new'
  get '/show' => 'users#new'
end
