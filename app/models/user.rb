class User < ApplicationRecord
	has_secure_password

	has_many_attached :supporting_ids
  has_one_attached :main_id
  has_one_attached :silly_photo
  has_one_attached :serious_photo
  has_one_attached :intro_video

	validates :email, uniqueness: true, presence: true
	validates :phone, uniqueness: true, presence: true

	validate :canadian?

	def verify_email
		#create code
		#set sent time
	end

	def verify_phone
		#create code
		#set sent time
	end

	private

	def canadian?
		if !canadian_citizen
			errors.add(:canadian_citizen, "Sorry, only Canadian Citizens for now :( But you can use the form below to show that your interested in having it in your country.")
		end
	end
end
