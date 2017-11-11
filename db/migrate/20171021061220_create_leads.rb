class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :phone
      t.string :email
      t.string :country

      t.timestamps
    end
  end
end
