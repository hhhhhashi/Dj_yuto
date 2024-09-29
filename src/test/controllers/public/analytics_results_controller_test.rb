require "test_helper"

class Public::AnalyticsResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_analytics_results_index_url
    assert_response :success
  end

  test "should get show" do
    get public_analytics_results_show_url
    assert_response :success
  end
end
