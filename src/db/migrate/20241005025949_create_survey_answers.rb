class CreateSurveyAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :survey_answers do |t|
      t.integer :user_id,  null: false
      t.integer :question_1_score
      t.integer :question_2_score
      t.integer :question_3_score
      t.integer :question_4_score
      t.integer :question_5_score
      t.integer :question_6_score
      t.integer :question_7_score
      t.integer :question_8_score
      t.integer :question_9_score
      t.integer :question_10_score
      t.integer :question_11_score
      t.integer :question_12_score
      t.integer :question_13_score
      t.integer :question_14_score
      t.integer :question_15_score
      t.integer :question_16_score
      t.integer :question_17_score
      t.integer :question_18_score
      t.integer :question_19_score
      t.integer :question_20_score
      t.timestamps
    end
  end
end
