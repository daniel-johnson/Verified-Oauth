class UsersController < ApplicationController
	before_action :authorize, only: [:edit, :update]

	def new
	end

	def create
	  user = User.new(create_user_params)
	  if user.save
	    session[:user_id] = user.id
	    flash[:notice] = "Sign up successful"
	    redirect_to(current_user.current_onboarding_path)
	  else
	  	flash[:alert] = user.errors.first
	    render(root_path)
	  end
	end

	def edit
	end

	def update
	end

	private

	def create_user_params
	  params.require(:user).permit(:first_name, :email, :password, :password_confirmation, :phone)
	end
end