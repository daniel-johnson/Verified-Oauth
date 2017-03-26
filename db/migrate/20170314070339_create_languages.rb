class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :name
      t.integer :speakers_2011
      t.integer :speakers_2006

      t.timestamps
    end
  end
end
