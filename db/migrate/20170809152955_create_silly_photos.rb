class CreateSillyPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :silly_photos do |t|
      t.references :user, foreign_key: true
      t.string :file

      t.timestamps
    end
  end
end
