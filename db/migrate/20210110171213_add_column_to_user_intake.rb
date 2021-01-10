class AddColumnToUserIntake < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_intakes, :user_intake_info, foreign_key: true
  end
end
