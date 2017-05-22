class UserLanguage < ApplicationRecord
  belongs_to :UserLanguage
  belongs_to :language
end
