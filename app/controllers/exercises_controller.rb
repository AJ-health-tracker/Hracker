class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  def index
    @exercises = Exercise.all
  end

  def show

  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)

    if @exercise.save
      redirect_to @exercise, notice: 'Exercise was successfully created.'
    else
      render :new
    end
  end

  private

    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    def exercise_params
      params.require(:exercise).permit(:exercise_types, :calories_burned)
    end

end
