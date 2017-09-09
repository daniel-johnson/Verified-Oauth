class InterviewVideo < ApplicationRecord
  belongs_to :user
  mount_uploader :file, VideoUploader
end
