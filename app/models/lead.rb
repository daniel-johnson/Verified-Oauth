class Lead < ApplicationRecord
  validates :email,   uniqueness: true, presence: true
  validates :phone,   uniqueness: true, presence: true
  validates :country, presence: true
end
