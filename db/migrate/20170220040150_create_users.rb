class CreateUsers < ActiveRecord::Migration[5.0]
	def change
		create_table  :users do |t|
			t.string    :first_name
			t.string    :middle_name
			t.string    :last_name
			t.string    :phone
			t.string    :email
			t.string    :sex
			t.string    :address_number
			t.string    :address_street
			t.string    :address_unit
			t.string    :address_city
			t.string    :address_province
			t.string    :address_postal_code
			t.boolean   :address_verified, default: false
			t.boolean   :phone_verified, default: false
			t.boolean   :email_verified, default: false
			t.boolean   :verified, default: false
			t.string    :main_identification
			t.string    :support_identification
			t.date      :birthday
			t.string    :password_digest
			t.boolean   :password_not_set, default: false
			t.string    :aasm_state
			t.timestamps
		end
	end
end
