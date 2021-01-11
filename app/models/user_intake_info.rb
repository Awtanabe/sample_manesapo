class UserIntakeInfo < ApplicationRecord
  belongs_to :user
  belongs_to :nutrient,optional: true
  has_many :user_intakes
end
