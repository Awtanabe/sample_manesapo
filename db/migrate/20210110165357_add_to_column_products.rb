class AddToColumnProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :calorie, :integer, default: 0
  end
end
