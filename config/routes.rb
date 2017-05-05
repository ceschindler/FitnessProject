Rails.application.routes.draw do
  get '/about' => 'static_pages#about' 

  get '/generate_workout' => 'static_pages#generateWorkout'

  get '/display_workout' => 'static_pages#displayWorkout'

  get '/generate_meal' => 'static_pages#generateMeal'

  get '/user_tracking' => 'static_pages#userTracking'
  
  get '/login' => 'sessions#new'
  
  post '/login' => 'sessions#create'
  
  delete '/logout' => 'sessions#destroy'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :account_activations, only: [:edit]
  root "static_pages#home"
end
