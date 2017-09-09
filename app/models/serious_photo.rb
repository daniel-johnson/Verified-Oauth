class SeriousPhoto < ApplicationRecord
  belongs_to :user
  mount_uploader :file, PhotoUploader
end
