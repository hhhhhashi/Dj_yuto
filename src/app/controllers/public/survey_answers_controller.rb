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
      
      diagnosis = determine_diagnosis(total_score)

      SurveyResult.create!(
      user_id: current_user.id,
      total_score: total_score,
      career_growth_opportunities: career_growth_opportunities, 
      workplace_relationships: workplace_relationships,
      work_life_balance: work_life_balance,
      compensation_and_benefits: compensation_and_benefits,
      job_content_and_fulfillment: job_content_and_fulfillment, 
      workplace_culture_and_environment: workplace_culture_and_environment,
      stress_and_workload: stress_and_workload, 
      purpose_and_accomplishment: purpose_and_accomplishment,
      diagnosis: diagnosis
    )
                                          
    redirect_to public_users_show_path, notice: '@survey_answer was successfully created.'
    else
      render :new
    end
  end

  def index
  end

  def show
  end

  private

  def determine_diagnosis(total_score)
    if total_score >= 90
      "非常に満足"
    elsif total_score.between?(70, 89)
      "おおむね満足"
    elsif total_score.between?(50, 69)
      "やや不満"
    elsif total_score.between?(30, 49)
      "不満が多い"
    else
      "非常に不満"
    end
  end

  def survey_answer_params
    params.require(:survey_answer).permit(
      :question_1_score, :question_2_score, :question_3_score, 
      :question_4_score, :question_5_score, :question_6_score, 
      :question_7_score, :question_8_score, :question_9_score, 
      :question_10_score, :question_11_score, :question_12_score,
      :question_13_score, :question_14_score, :question_15_score, 
      :question_16_score, :question_17_score, :question_18_score,
      :question_19_score, :question_20_score
    )
  end
end
