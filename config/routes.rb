  Rails.application.routes.draw do
  root to: "users#new"
  resource :user, only: [:create, :edit, :update]
  resource :lead, only: [:create]

  delete 'user/main_id' => 'images#main_id', as: "user_main_id"
  delete 'user/serious_photo' => 'images#serious_photo', as: "user_serious_photo"

  get 	'/login' 	=> 'sessions#new'
  post 	'/login' 	=> 'sessions#create'
  get 	'/logout' => 'sessions#destroy'

  get '/basic_info'	=> 'onboarding#basic_info'
  get '/complete'   => 'onboarding#complete'
end
