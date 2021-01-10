class CreateNutrients < ActiveRecord::Migration[5.2]
  def change
    create_table :nutrients do |t|
      t.string :name
      t.references :product

      t.timestamps
    end
  end
end
