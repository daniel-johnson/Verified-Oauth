class OnboardingController < ApplicationController
  before_action :authorize, except: :home

	def home
    @user = User.new
	end

	def basic_info
		@user = current_user
	end

	def complete
	end
end
