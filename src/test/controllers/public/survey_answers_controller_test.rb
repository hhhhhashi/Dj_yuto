require "test_helper"

class Public::SurveyAnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_survey_answers_new_url
    assert_response :success
  end

  test "should get index" do
    get public_survey_answers_index_url
    assert_response :success
  end

  test "should get show" do
    get public_survey_answers_show_url
    assert_response :success
  end
end
