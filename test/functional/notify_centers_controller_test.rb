require 'test_helper'

class NotifyCentersControllerTest < ActionController::TestCase
  setup do
    @notify_center = notify_centers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notify_centers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notify_center" do
    assert_difference('NotifyCenter.count') do
      post :create, notify_center: { checked: @notify_center.checked, content: @notify_center.content, time: @notify_center.time, title: @notify_center.title }
    end

    assert_redirected_to notify_center_path(assigns(:notify_center))
  end

  test "should show notify_center" do
    get :show, id: @notify_center
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notify_center
    assert_response :success
  end

  test "should update notify_center" do
    put :update, id: @notify_center, notify_center: { checked: @notify_center.checked, content: @notify_center.content, time: @notify_center.time, title: @notify_center.title }
    assert_redirected_to notify_center_path(assigns(:notify_center))
  end

  test "should destroy notify_center" do
    assert_difference('NotifyCenter.count', -1) do
      delete :destroy, id: @notify_center
    end

    assert_redirected_to notify_centers_path
  end
end
