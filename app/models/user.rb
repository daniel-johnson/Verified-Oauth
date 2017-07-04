class User < ApplicationRecord
	include AASM
	has_secure_password
	# before_save :contact_requirements
	# before_save :check_basic_info_finished

	# def manage_password
	# 	if self.password.blank? && self.password_confirmation.blank?
	# 		self.password = self.password_confirmation = ""
	# 		self.password_digest = "no password"
	# 		self.password_not_set = true
	# 	end
	# end

	aasm do
		state :basic_info, :initial => true
		state :contact, :id, :complete

		# event :finished_citizenship do
		# 	transitions :from => :citizenship, :to => :basic_info
		# end

		event :finished_basic_info do
			transitions :from => :basic_info, :to => :contact
		end

		event :finished_contact do
			transitions :from => :contact, :to => :id
		end

		event :finished_id do
			transitions :from => :id, :to => :complete
		end
	end

	def current_onboarding_path
		case self.aasm_state
		when "basic_info"
			basic_info_path
		when "contact"
			contact_path
		when "id"
			id_path
		when "complete"
			complete_path
		end
	end

	private

	# def check_basic_info_finished
	# 	# TODO
	# end

	# def contact_requirements
	# 	unless self.phone.present? || self.email.present?
	# 		self.errors.add( :base, :phone_or_email_required, "Either an email or phone number is required.")
	# 	end
	# end
end
