Rails.application.routes.draw do

  root 'pages#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', :as => 'logout'

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  get '/search' => 'flights#search'

  # post '/reservation/:id' => 'flights#reservation', as:

  resources :flights
  resources :airplanes
  resources :users
  resources :reservations

end
