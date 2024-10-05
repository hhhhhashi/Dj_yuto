class CreateSurveyResults < ActiveRecord::Migration[6.1]
  def change
    create_table :survey_results do |t|
      t.integer :user_id,  null: false
      t.integer :career_growth_opportunities
      t.integer :workplace_relationships
      t.integer :work_life_balance
      t.integer :compensation_and_benefits
      t.integer :job_content_and_fulfillment
      t.integer :workplace_culture_and_environment
      t.integer :stress_and_workload
      t.integer :purpose_and_accomplishment
      t.integer :total_score
      t.timestamps
    end
  end
end
