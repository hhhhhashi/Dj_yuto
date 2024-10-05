class AddDiagnosisToSurveyResults < ActiveRecord::Migration[6.1]
  def change
    add_column :survey_results, :diagnosis, :string
  end
end
