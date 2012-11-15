require 'test_helper'

class MemberDetsControllerTest < ActionController::TestCase
  setup do
    @member_det = member_dets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_dets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_det" do
    assert_difference('MemberDet.count') do
      post :create, member_det: { Address: @member_det.Address, age: @member_det.age, name: @member_det.name, sex: @member_det.sex }
    end

    assert_redirected_to member_det_path(assigns(:member_det))
  end

  test "should show member_det" do
    get :show, id: @member_det
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_det
    assert_response :success
  end

  test "should update member_det" do
    put :update, id: @member_det, member_det: { Address: @member_det.Address, age: @member_det.age, name: @member_det.name, sex: @member_det.sex }
    assert_redirected_to member_det_path(assigns(:member_det))
  end

  test "should destroy member_det" do
    assert_difference('MemberDet.count', -1) do
      delete :destroy, id: @member_det
    end

    assert_redirected_to member_dets_path
  end
end
