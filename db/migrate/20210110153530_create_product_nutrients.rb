class CreateProductNutrients < ActiveRecord::Migration[5.2]
  def change
    create_table :product_nutrients do |t|
      t.references :product, foreign_key: true
      t.references :nutrient, foreign_key: true

      t.timestamps
    end
  end
end
