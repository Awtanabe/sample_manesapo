class RemoveColumnToUserIntakeInfo < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_intake_infos, :nutrient_id, :ingeter
  end
end
