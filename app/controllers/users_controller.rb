class UsersController < ApplicationController
	before_action :authorize, only: [:edit, :update]

	def create
	  user = User.new(create_user_params)
	  if user.save
	    session[:user_id] = user.id
	    flash[:notice] = "Sign up successful"
	    redirect_to(edit_user_path)
	  else
	  	flash[:alert] = user.errors.first
	    render(root_path)
	  end
	end

	def edit
		# current_user
		# current_user.main_id_photos.build
		# current_user.supporting_id_photos.build
		# current_user.serious_photos.build
		# current_user.silly_photos.build
		# current_user.interview_videos.build
		@user = current_user
	end

	def update
		user = current_user
		user.assign_attributes(update_user_params)
		# if user.save
		# 	flash[:notice] = "Changes Saved"
		# 	redirect_to(edit_user_path)
		# else
		# 	flash[:alert] = "Could not save"
		# 	render edit_user_path
		# end
		byebug
	end

	private

	def create_user_params
	  params.require(:user).permit(
	  	:email,
	  	:password,
	  	:password_confirmation,
	  	:phone
	  )
	end

	def update_user_params
		params.require(:user).permit(
				:first_name,
				:middle_name,
				:last_name,
				:birthdate,
				:favourite_color,
				:address_number,
				:address_street,
				:address_unit,
				:address_city,
				:address_province,
				:address_postal_code,
				:canadian_citizen,
				main_id_photos_attributes:  		 [:file],
				supporting_id_photos_attributes: [:file],
				serious_photos_attributes: 		 	 [:file],
				silly_photos_attributes: 		 		 [:file],
				interview_videos_attributes: 		 [:file]
		)
	end
end