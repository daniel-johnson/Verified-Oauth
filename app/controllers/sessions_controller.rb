class SessionsController < ApplicationController
	def new
	end

	def create
    user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      flash[:notice] = "#{user.first_name} signed in"
      redirect_to edit_user_path
    else
    # If user's login doesn't work, send them back to the login form.
      flash[:alert] = user_flash_matrix(user, params)
      render root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

  private

  def user_flash_matrix(user, params)
    if user.nil?
      # Case of email not found
      "Email and password combo don't match anything on record"
    elsif params[:email].blank?
      "Email can't be blank"
    elsif params[:password].blank?
      "Password can't be blank"
    else
      # Case of incorrect password
      "Email and password combo don't match anything on record"
    end
  end

end

