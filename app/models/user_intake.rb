class UserIntake < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :user_intake_info
end
