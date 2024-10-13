class Public::SurveyResultsController < ApplicationController
  before_action :authenticate_user! 

  def index
    @survey_results = current_user.survey_results.order(:created_at)
    @survey_results_chart = SurveyResult.group_by_day(:created_at).sum(:total_score)
  end

  def show
  end
end
