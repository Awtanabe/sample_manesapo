class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :user_intake_info
  has_many :user_intakes
  has_many :user_products
  has_many :products, through: :user_products

  def current_total_cal
    total = 0
    user_intakes.each do |ui|
      total += ui.product.calorie
    end

    total
  end
end
