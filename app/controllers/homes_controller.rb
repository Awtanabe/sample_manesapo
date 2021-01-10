class HomesController < ApplicationController
  before_action :authenticate_user!
  def index
    @user_intake_info = current_user.user_intake_info || UserIntakeInfo.create(user_id: current_user.id)
    @current_intake = current_user.current_total_cal
  end
end
