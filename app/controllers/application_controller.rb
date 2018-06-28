class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    #The begin block is for development, and when I wipe the DB without signing out first.
    begin
      @current_user ||= ( User.find(session[:user_id]) if session[:user_id] )
      #This is for development, to handle the case when I have an active session (and cookies) but clear the DB.
    rescue
      session[:user_id] = nil
      @current_user = nil
      flash[:dark] = "I signed you out of your non-existant user."
      redirect_to root_path
    end
  end

  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end
