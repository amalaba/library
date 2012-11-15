require 'test_helper'

class BookDetsControllerTest < ActionController::TestCase
  setup do
    @book_det = book_dets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_dets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_det" do
    assert_difference('BookDet.count') do
      post :create, book_det: { author: @book_det.author, available: @book_det.available, name: @book_det.name }
    end

    assert_redirected_to book_det_path(assigns(:book_det))
  end

  test "should show book_det" do
    get :show, id: @book_det
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_det
    assert_response :success
  end

  test "should update book_det" do
    put :update, id: @book_det, book_det: { author: @book_det.author, available: @book_det.available, name: @book_det.name }
    assert_redirected_to book_det_path(assigns(:book_det))
  end

  test "should destroy book_det" do
    assert_difference('BookDet.count', -1) do
      delete :destroy, id: @book_det
    end

    assert_redirected_to book_dets_path
  end
end
