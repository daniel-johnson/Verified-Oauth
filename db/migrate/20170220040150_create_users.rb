class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :phone_number
      t.string :email
      # Include the below? Its in the short form, but I don't know if it's needed/superfluous.
      # t.integer :marital_status
      # t.boolean :common_law
      t.string :sex
      t.string :address_number
      t.string :address_street
      t.string :address_unit
      t.string :address_city
      t.string :address_province
      t.string :address_postal_code
      t.boolean :address_verified, default: false
      t.boolean :phone_verified, default: false
      t.boolean :email_verified, default: false
      t.boolean :verified, default: false
      t.string :main_id
      t.string :support_id

      t.timestamps
    end
  end
end