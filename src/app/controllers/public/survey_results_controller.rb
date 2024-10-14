class Public::SurveyResultsController < ApplicationController
  before_action :authenticate_user! 

  def index
    @survey_results = current_user.survey_results.order(:created_at)
    @chart_total = current_user.survey_results.group_by_day(:created_at, time_zone: 'Asia/Tokyo').sum(:total_score).transform_values { |value| value == 0 ? nil : value }
    @chart_career_growth = current_user.survey_results.group_by_day(:created_at, time_zone: 'Asia/Tokyo').sum(:career_growth_opportunities).transform_values { |value| value == 0 ? nil : value }
    @chart_workplace_relationships = current_user.survey_results.group_by_day(:created_at, time_zone: 'Asia/Tokyo').sum(:workplace_relationships).transform_values { |value| value == 0 ? nil : value }
    @chart_work_life_balance = current_user.survey_results.group_by_day(:created_at, time_zone: 'Asia/Tokyo').sum(:work_life_balance).transform_values { |value| value == 0 ? nil : value }
    @chart_compensation_and_benefits = current_user.survey_results.group_by_day(:created_at, time_zone: 'Asia/Tokyo').sum(:compensation_and_benefits).transform_values { |value| value == 0 ? nil : value }
    @chart_job_content_and_fulfillment = current_user.survey_results.group_by_day(:created_at, time_zone: 'Asia/Tokyo').sum(:job_content_and_fulfillment).transform_values { |value| value == 0 ? nil : value }
    @chart_workplace_culture_and_environment = current_user.survey_results.group_by_day(:created_at, time_zone: 'Asia/Tokyo').sum(:workplace_culture_and_environment).transform_values { |value| value == 0 ? nil : value }
    @chart_stress_and_workload = current_user.survey_results.group_by_day(:created_at, time_zone: 'Asia/Tokyo').sum(:stress_and_workload).transform_values { |value| value == 0 ? nil : value }
    @chart_purpose_and_accomplishment = current_user.survey_results.group_by_day(:created_at, time_zone: 'Asia/Tokyo').sum(:purpose_and_accomplishment).transform_values { |value| value == 0 ? nil : value }
  end

  def show
  end

end
