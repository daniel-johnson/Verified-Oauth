  Rails.application.routes.draw do
  root 'onboarding#home'
  resource :user, only: [:new, :create]

  get 	'/login' 	=> 'sessions#new'
  post 	'/login' 	=> 'sessions#create'
  get 	'/logout' => 'sessions#destroy'

  get '/basic_info'	=> 'onboarding#basic_info'
  get '/contact'		=> 'onboarding#contact'
  get '/id'	        => 'onboarding#id'
  get '/complete'   => 'onboarding#complete'
end
