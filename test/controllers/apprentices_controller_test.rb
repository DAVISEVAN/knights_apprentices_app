require "test_helper"

class ApprenticesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apprentices_index_url
    assert_response :success
  end

  test "should get new" do
    get apprentices_new_url
    assert_response :success
  end

  test "should get show" do
    get apprentices_show_url
    assert_response :success
  end

  test "should get edit" do
    get apprentices_edit_url
    assert_response :success
  end
end
