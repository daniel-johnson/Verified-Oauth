class User < ApplicationRecord
	include AASM
	has_secure_password
	before_save :contact_requirements
	before_save :check_basic_info_finished

	def manage_password
		if self.password.blank? && self.password_confirmation.blank?
			self.password = self.password_confirmation = ""
			self.password_digest = "no password"
			self.password_not_set = true
		end
	end

	aasm do
		state :basic_info, :initial => true
		state :contact, :citizenship, :complete

		event :finish_basic_info do
			transitions :from => :basic_info, :to => :contact
		end

		event :finish_contact do
			transitions :from => :contact, :to => :citizenship
		end

		event :sleep do
			transitions :from => :citizenship, :to => :complete
		end
	end

	private

	def check_basic_info_finished
		# TODO
	end

	def contact_requirements
		unless self.phone.present? || self.email.present?
			self.errors.add( :base, :phone_or_email_required, "Either an email or phone number is required.")
		end
	end
end
