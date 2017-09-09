class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= ( User.find(session[:user_id]) if session[:user_id] )
    #This is for development, to handle the case when I have an active session (and cookies) but clear the DB.
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end
