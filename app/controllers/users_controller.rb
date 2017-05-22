class UsersController < ApplicationController
	authorize, only: [:edit, :update]

	def new
	end

	def create
	  user = User.new(create_user_params)
	  user.manage_password
	  if user.save
	    session[:user_id] = user.id
	    flash[:notice] = "Sign up successful"
	    redirect_to '/'
	  else
	  	flash[:alert] = user.errors.first
	    redirect_to '/signup'
	  end
	end

	def edit
	end

	private

	def create_user_params
	  params.require(:user).permit(:first_name, :email, :password, :password_confirmation, :phone)
	end
end