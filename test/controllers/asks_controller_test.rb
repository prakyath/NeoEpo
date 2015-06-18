require 'test_helper'

class AsksControllerTest < ActionController::TestCase
  setup do
    @ask = asks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ask" do
    assert_difference('Ask.count') do
      post :create, ask: { email: @ask.email, message: @ask.message, phone: @ask.phone, subject: @ask.subject }
    end

    assert_redirected_to ask_path(assigns(:ask))
  end

  test "should show ask" do
    get :show, id: @ask
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ask
    assert_response :success
  end

  test "should update ask" do
    patch :update, id: @ask, ask: { email: @ask.email, message: @ask.message, phone: @ask.phone, subject: @ask.subject }
    assert_redirected_to ask_path(assigns(:ask))
  end

  test "should destroy ask" do
    assert_difference('Ask.count', -1) do
      delete :destroy, id: @ask
    end

    assert_redirected_to asks_path
  end
end
