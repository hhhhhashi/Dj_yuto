require "test_helper"

class Public::NegativeReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_negative_reports_new_url
    assert_response :success
  end

  test "should get index" do
    get public_negative_reports_index_url
    assert_response :success
  end

  test "should get show" do
    get public_negative_reports_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_negative_reports_edit_url
    assert_response :success
  end
end
