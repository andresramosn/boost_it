require 'test_helper'

class TipsListsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tips_lists_new_url
    assert_response :success
  end

  test "should get create" do
    get tips_lists_create_url
    assert_response :success
  end

end
