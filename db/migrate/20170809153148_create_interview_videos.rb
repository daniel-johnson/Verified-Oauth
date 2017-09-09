class CreateInterviewVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :interview_videos do |t|
      t.references :user, foreign_key: true
      t.string :file

      t.timestamps
    end
  end
end
