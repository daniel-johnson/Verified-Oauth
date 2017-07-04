class OnboardingController < ApplicationController
  before_action :authorize, except: :home

	def home
		@user = User.new
	end

	def basic_info
	end

	def contact
	end

	def id
	end

	def complete
	end
end
