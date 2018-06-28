  Rails.application.routes.draw do
  root to: "users#new"
  resource :user, only: [:create, :edit, :update]
  resource :lead, only: [:create]

  delete 'main_id' => 'images#main_id', as: "main_id"
  delete 'supporting_id/:id' => 'images#supporting_id', as: "supporting_id"
  delete 'serious_photo' => 'images#serious_photo', as: "serious_photo"
  delete 'silly_photo' => 'images#silly_photo', as: "silly_photo"
  delete 'intro_video' => 'images#intro_video', as: "intro_video"

  get 	'/login' 	=> 'sessions#new'
  post 	'/login' 	=> 'sessions#create'
  get 	'/logout' => 'sessions#destroy'

  get '/basic_info'	=> 'onboarding#basic_info'
  get '/complete'   => 'onboarding#complete'
end
