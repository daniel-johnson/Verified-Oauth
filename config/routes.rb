  Rails.application.routes.draw do
  root to: "users#new"
  resource :user, only: [:create, :edit, :update]

  get 	'/login' 	=> 'sessions#new'
  post 	'/login' 	=> 'sessions#create'
  get 	'/logout' => 'sessions#destroy'

  get '/basic_info'	=> 'onboarding#basic_info'
  get '/complete'   => 'onboarding#complete'
end
