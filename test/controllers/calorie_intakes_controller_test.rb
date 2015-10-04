require 'test_helper'

class CalorieIntakesControllerTest < ActionController::TestCase
  setup do
    @calorie_intake = calorie_intakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    # assert_not_nil assigns(:calorie_intakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calorie_intake" do
    assert_difference('CalorieIntake.count') do
      post :create, calorie_intake: { calorie_intake: @calorie_intake.calorie_intake }
    end
  end

  test "should show calorie_intake" do
    get :show, id: @calorie_intake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calorie_intake
    assert_response :success
  end

  test "should update calorie_intake" do
    patch :update, id: @calorie_intake, calorie_intake: { calorie_intake: @calorie_intake.calorie_intake }
  end

  test "should destroy calorie_intake" do
    assert_difference('CalorieIntake.count', -1) do
      delete :destroy, id: @calorie_intake
    end
  end
end
