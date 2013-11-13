INeedAPhoto::Application.routes.draw do
  
  resources :photos
  resources :users

  get '/auth/twitter/callback' => 'sessions#callback'
  get '/auth/twitter', :as => 'login'
  delete '/sign-out' => 'sessions#destroy', :as => 'sign_out'

end
