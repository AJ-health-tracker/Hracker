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
end
