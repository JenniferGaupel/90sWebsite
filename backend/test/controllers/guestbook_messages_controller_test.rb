require 'test_helper'

class GuestbookMessagesControllerTest < ActionController::TestCase
  setup do
    @guestbook_message = guestbook_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guestbook_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guestbook_message" do
    assert_difference('GuestbookMessage.count') do
      post :create, guestbook_message: { message: @guestbook_message.message, name: @guestbook_message.name }
    end

    assert_redirected_to guestbook_message_path(assigns(:guestbook_message))
  end

  test "should show guestbook_message" do
    get :show, id: @guestbook_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guestbook_message
    assert_response :success
  end

  test "should update guestbook_message" do
    patch :update, id: @guestbook_message, guestbook_message: { message: @guestbook_message.message, name: @guestbook_message.name }
    assert_redirected_to guestbook_message_path(assigns(:guestbook_message))
  end

  test "should destroy guestbook_message" do
    assert_difference('GuestbookMessage.count', -1) do
      delete :destroy, id: @guestbook_message
    end

    assert_redirected_to guestbook_messages_path
  end
end
