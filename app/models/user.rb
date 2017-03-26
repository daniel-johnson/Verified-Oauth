class User < ApplicationRecord
	before_save :check_if_verified unless self.verified

	private

	def check_if_verfied
		if self.address_verified && self.phone_verified && self.email_verified
			self.verified = true
		end
	end
end
