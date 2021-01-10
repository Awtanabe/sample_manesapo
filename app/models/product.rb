class Product < ApplicationRecord
  belongs_to :user
  has_many :product_nutrients
  has_many :nutrients, through: :product_nutrients
  accepts_nested_attributes_for :product_nutrients, allow_destroy: true, reject_if: :all_blank
end
