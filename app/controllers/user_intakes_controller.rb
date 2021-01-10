class UserIntakesController < ApplicationController
  before_action :set_user_intake, only: [:show, :edit, :update, :destroy]

  # GET /user_intakes
  # GET /user_intakes.json
  def index
    @user_intakes = UserIntake.all
  end

  # GET /user_intakes/1
  # GET /user_intakes/1.json
  def show
  end

  # GET /user_intakes/new
  def new
    @user_intake = UserIntake.new
  end

  # GET /user_intakes/1/edit
  def edit
  end

  # POST /user_intakes
  # POST /user_intakes.json
  def create
    @user_intake = UserIntake.new(user_intake_params)

    respond_to do |format|
      if @user_intake.save
        format.html { redirect_to @user_intake, notice: 'User intake was successfully created.' }
        format.json { render :show, status: :created, location: @user_intake }
      else
        format.html { render :new }
        format.json { render json: @user_intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_intakes/1
  # PATCH/PUT /user_intakes/1.json
  def update
    respond_to do |format|
      if @user_intake.update(user_intake_params)
        format.html { redirect_to @user_intake, notice: 'User intake was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_intake }
      else
        format.html { render :edit }
        format.json { render json: @user_intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_intakes/1
  # DELETE /user_intakes/1.json
  def destroy
    @user_intake.destroy
    respond_to do |format|
      format.html { redirect_to user_intakes_url, notice: 'User intake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_intake
      @user_intake = UserIntake.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_intake_params
      params.require(:user_intake).permit(:product_id).merge(user_id: current_user.id)
    end
end
