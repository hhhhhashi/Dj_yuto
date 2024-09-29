require "test_helper"

class Public::EmotionLogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_emotion_logs_index_url
    assert_response :success
  end

  test "should get show" do
    get public_emotion_logs_show_url
    assert_response :success
  end
end
