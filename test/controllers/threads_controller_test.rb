require 'test_helper'

class ThreadsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get threads_create_url
    assert_response :success
  end

  test "should get index" do
    get threads_index_url
    assert_response :success
  end

  test "should get show" do
    get threads_show_url
    assert_response :success
  end

  test "should get edit" do
    get threads_edit_url
    assert_response :success
  end

  test "should get update" do
    get threads_update_url
    assert_response :success
  end

  test "should get destroy" do
    get threads_destroy_url
    assert_response :success
  end

end
