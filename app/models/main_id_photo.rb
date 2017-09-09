class MainIdPhoto < ApplicationRecord
  belongs_to :user
  mount_uploader :file, PhotoUploader
end
