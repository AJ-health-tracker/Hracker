require 'minitest/pride'
require 'test_helper'

class ExercisesControllerTest < ActionController::TestCase
  setup do
    @exercise = exercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should show exercise" do
    get :show, id: @exercise
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise" do
    assert_difference('Exercise.count') do
      post :create, exercise: { exercise_performed: @exercise.exercise_performed }
    end
  end

  test "should get edit" do
    get :edit, id: @exercise
    assert_response :success
  end
  # 
  # test "should update exercise" do
  #   patch :update, id: @exercise, exercise_performed: { exercise_performed: @exercise.exercise_performed }
  # end

  test "should destroy exercise" do
    assert_difference('Exercise.count', -1) do
      delete :destroy, id: @exercise
    end
  end
end
