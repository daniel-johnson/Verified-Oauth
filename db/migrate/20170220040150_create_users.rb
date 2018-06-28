class CreateUsers < ActiveRecord::Migration[5.0]
	def change
		create_table  :users do |t|
			t.string    :first_name
			t.string    :middle_name
			t.string    :last_name
			t.string    :phone
			t.string    :email
			t.string    :gender
			t.date			:birthdate
			t.string		:favourite_color
			t.string    :address_number
			t.string    :address_street
			t.string    :address_unit
			t.string    :address_city
			t.string    :address_province
			t.string    :address_postal_code
			t.string		:address_verification_code
			t.datetime	:address_verification_sent
			t.datetime  :address_verified
			t.string		:phone_verifiation_code
			t.datetime	:phone_verification_sent
			t.datetime  :phone_verified
			t.string		:email_verification_code
			t.datetime	:email_verification_sent
			t.datetime  :email_verified
			t.datetime  :user_verified
			t.string    :main_id
			t.string    :serious_photo
			t.string    :silly_photo
			t.string		:intro_video
			t.string    :password_digest
			t.boolean		:canadian_citizen, defualt: false

			t.timestamps
		end
	end
end
