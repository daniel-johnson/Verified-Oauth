class SupportingIdPhoto < ApplicationRecord
  belongs_to :user
  mount_uploader :file, PhotoUploader
end
