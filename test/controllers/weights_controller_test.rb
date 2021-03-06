require 'test_helper'

class WeightsControllerTest < ActionController::TestCase
  setup do
    @weight = weights(:today)
    @weight2 = weights(:later_today)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end


  test "should create only one weight" do
    post :create, weight: { weight: @weight2.weight }
    assert_no_difference('Weight.count') do
      post :create, weight: { weight: @weight.weight }
    end

    assert_response :success
  end


  # test "should save only one weight per day" do
  #   assert weights(:today).save
  #   assert weights(:yesterday).save
  #   assert weights(:tomorrow).save
  #   assert_not(:later_today).save
  # end


  test "should show weight" do
    get :show, id: @weight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weight
    assert_response :success
  end

  test "should update weight" do
    patch :update, id: @weight, weight: { weight: @weight.weight }
    assert_redirected_to weight_path(assigns(:weight))
  end

  test "should destroy weight" do
    assert_difference('Weight.count', -1) do
      delete :destroy, id: @weight
    end

    assert_redirected_to weights_path
  end
end
