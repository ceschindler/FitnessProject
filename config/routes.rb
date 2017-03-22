Rails.application.routes.draw do
  get 'static_pages/home'

  get 'about' => 'static_pages#about' 

  get 'generate_workout' => 'static_pages#generateWorkout'

  get 'display_workout' => 'static_pages#displayWorkout'

  get 'generate_meal' => 'static_pages#generateMeal'

  get 'user_tracking' => 'static_pages#userTracking'

  get 'new_user_path' => 'users#new'
  
  post 'new_user' => 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"
  resources :users
end
