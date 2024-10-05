class Public::SurveyAnswersController < ApplicationController
  def new
    @survey_answer=SurveyAnswer.new
  end

  def create
    @survey_answer=SurveyAnswer.new(survey_answer_params)
    @survey_answer.user_id=current_user.id
    if @survey_answer.save
      total_score = @survey_answer.question_1_score +
                    @survey_answer.question_2_score +
                    @survey_answer.question_3_score +
                    @survey_answer.question_4_score +
                    @survey_answer.question_5_score +
                    @survey_answer.question_6_score +
                    @survey_answer.question_7_score +
                    @survey_answer.question_8_score +
                    @survey_answer.question_9_score +
                    @survey_answer.question_10_score +
                    @survey_answer.question_11_score +
                    @survey_answer.question_12_score +
                    @survey_answer.question_13_score +
                    @survey_answer.question_14_score +
                    @survey_answer.question_15_score +
                    @survey_answer.question_16_score +
                    @survey_answer.question_17_score +
                    @survey_answer.question_18_score +
                    @survey_answer.question_19_score +
                    @survey_answer.question_20_score 

      career_growth_opportunities = @survey_answer.question_1_score +
                                    @survey_answer.question_2_score +
                                    @survey_answer.question_3_score

      workplace_relationships = @survey_answer.question_4_score +
                                @survey_answer.question_5_score +
                                @survey_answer.question_6_score

      work_life_balance = @survey_answer.question_7_score +
                          @survey_answer.question_8_score +
                          @survey_answer.question_9_score 

      compensation_and_benefits = @survey_answer.question_10_score +
                                  @survey_answer.question_11_score
                                
      job_content_and_fulfillment = @survey_answer.question_12_score +
                                    @survey_answer.question_13_score +
                                    @survey_answer.question_14_score

      workplace_culture_and_environment = @survey_answer.question_15_score +
                                          @survey_answer.question_16_score
      
      stress_and_workload = @survey_answer.question_17_score +
                            @survey_answer.question_18_score
      
      purpose_and_accomplishment = @survey_answer.question_19_score +
                                   @survey_answer.question_20_score                              
                                          
      redirect_to public_users_show_path, notice: '@survey_answer was successfully created.'
    else
      render :new
    end
  end

  def index
  end

  def show
  end
end
