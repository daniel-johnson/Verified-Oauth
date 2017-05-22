Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'onboarding#home'

  get 	'/signup' 	=> 'users#new'
  post 	'/user' 	=> 'users#update'

  get 	'/login' 	=> 'sessions#new'
  post 	'/login' 	=> 'sessions#create'
  get 	'/logout' 	=> 'sessions#destroy'

  get '/basic_info'		=> 'onboarding#basic_info'
  get '/contact'		=> 'onboarding#contact'
  get '/citizenship'	=> 'onboarding#citizenship'
end
