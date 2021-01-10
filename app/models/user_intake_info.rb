class UserIntakeInfo < ApplicationRecord
  belongs_to :user
  belongs_to :nutrient,optional: true
end
