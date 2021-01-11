require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#current_total_cal' do
    before do
       @user = User.create(email: 'test1@example.com', password: 'password')
       user_intake_info = UserIntakeInfo.create(user_id: @user.id, target_intake: 2200)
       product = Product.create(name:"商品1", calorie: 200, user_id: @user.id)
       user_intake = UserIntake.create!(product_id: product.id,user_id: @user.id, user_intake_info_id: user_intake_info.id )

    end
    it '摂取カロリー200' do 
      expect(@user.current_total_cal).to eq 200
    end
  end
end
