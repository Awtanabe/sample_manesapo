class AddColumnUserIntakeInfos < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_intake_infos, :user, foreign_key: true
  end
end
