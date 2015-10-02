class CalorieIntakeController < ApplicationController
  #manually-created controller
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  def index
    @calorie_intake = CalorieIntake.all
  end

  def show
  end

  def new
    @calorie_intake = CalorieIntake.new
  end

  def edit
  end

  def create
    @calorie_intake = CalorieIntake.new(calorie_intake_params)

    if @calorie_intake.save
      redirect_to @calorie_intake, notice: 'Your calorie intake was successfully created!'
    else
      render :new
    end
  end

  def update
    if @calorie_intake.update(calorie_intake_params)
      redirect to @calorie_intake, notice: "your calorie intake was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @calorie_intake.destroy
    redirect_to calorie_intake_url, notice: "your calorie intake was successfully destroyed."
  end

  private
  def set_calorie_intake
    @calorie_intake = CalorieIntake.find(params[:id])
  end

  def calorie_intake_params
    params.require(:calorie_intake).permit(:calorie_intake)
  end

end
