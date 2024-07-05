require "test_helper"

class KnightsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get knights_index_url
    assert_response :success
  end

  test "should get new" do
    get knights_new_url
    assert_response :success
  end

  test "should get show" do
    get knights_show_url
    assert_response :success
  end

  test "should get edit" do
    get knights_edit_url
    assert_response :success
  end
end
