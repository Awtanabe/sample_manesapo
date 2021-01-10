class ProductNutrient < ApplicationRecord
  belongs_to :product
  belongs_to :nutrient
end
