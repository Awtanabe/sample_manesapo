class RemoveColumnToUserIntake < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_intakes, :user_intake_info_id, :ingeter
  end
end
