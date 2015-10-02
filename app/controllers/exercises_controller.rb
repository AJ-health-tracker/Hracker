class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def show
  end

  def new
    @exercise = Exercise.new
    @exercise_types = ExerciseType.all
    @cardio = ExerciseType.create(name: 'Cardio')
    @water_sports = ExerciseType.create(name: 'Water sports')
    @weights = ExerciseType.create(name: 'Weights')
    @flexibility = ExerciseType.create(name: 'Flexibility')
  end
end
