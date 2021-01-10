class CreateUserIntakeInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_intake_infos do |t|
      t.integer :target_intake, default: 2000
      t.references :nutrient, foreign_key: true

      t.timestamps
    end
  end
end
