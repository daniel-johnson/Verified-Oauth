class SupportingId < ApplicationRecord
  belongs_to :user
  mount_uploader :file, PhotoUploader

  validates :file, presence: true
  validates_associated :user
end
