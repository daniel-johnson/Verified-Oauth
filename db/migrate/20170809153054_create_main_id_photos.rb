class CreateMainIdPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :main_id_photos do |t|
      t.references :user, foreign_key: true
      t.string :file

      t.timestamps
    end
  end
end
