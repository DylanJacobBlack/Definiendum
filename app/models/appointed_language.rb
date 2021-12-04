class AppointedLanguage < ApplicationRecord
  belongs_to :user_id
  belongs_to :language_id
end
