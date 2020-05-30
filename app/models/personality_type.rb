class PersonalityType < ApplicationRecord
  has_many :products
  has_many :users
  has_many :survey_questions
end
