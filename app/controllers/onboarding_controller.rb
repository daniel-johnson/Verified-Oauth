class OnboardingController < ApplicationController
  before_action :authorize, except: :home

	def home
	end

	def basic_info
		@user = current_user
	end

	def complete
	end
end
