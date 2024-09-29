require "test_helper"

class Public::ImprovementSuggestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_improvement_suggestions_index_url
    assert_response :success
  end

  test "should get show" do
    get public_improvement_suggestions_show_url
    assert_response :success
  end
end
