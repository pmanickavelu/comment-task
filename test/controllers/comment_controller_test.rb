require 'test_helper'

class CommentControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get comment_home_url
    assert_response :success
  end

  test "should get list" do
    get comment_list_url
    assert_response :success
  end

  test "should get create" do
    get comment_create_url
    assert_response :success
  end

end
