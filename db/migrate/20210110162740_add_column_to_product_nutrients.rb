class AddColumnToProductNutrients < ActiveRecord::Migration[5.2]
  def change
    add_column :product_nutrients, :value, :integer
  end
end
