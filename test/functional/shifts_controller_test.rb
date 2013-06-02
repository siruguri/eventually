require 'test_helper'

class ShiftsControllerTest < ActionController::TestCase
  setup do
    @shift = shifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shift" do
    assert_difference('Shift.count') do
      post :create, shift: { address: @shift.address, description: @shift.description, end: @shift.end, in_series: @shift.in_series, name: @shift.name, start: @shift.start, vol_need: @shift.vol_need }
    end

    assert_redirected_to shift_path(assigns(:shift))
  end

  test "should show shift" do
    get :show, id: @shift
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shift
    assert_response :success
  end

  test "should update shift" do
    put :update, id: @shift, shift: { address: @shift.address, description: @shift.description, end: @shift.end, in_series: @shift.in_series, name: @shift.name, start: @shift.start, vol_need: @shift.vol_need }
    assert_redirected_to shift_path(assigns(:shift))
  end

  test "should destroy shift" do
    assert_difference('Shift.count', -1) do
      delete :destroy, id: @shift
    end

    assert_redirected_to shifts_path
  end
end
