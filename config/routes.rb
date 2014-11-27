Rails.application.routes.draw do

<<<<<<< HEAD
  root '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', :as => 'logout'

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

=======
>>>>>>> 3c9d1c26f901d40b5bb1b79b81686d4749710c5d
  resources :flights
  resources :airplanes
end
