class ImprovementSuggestion < ApplicationRecord
    belongs_to :user
    belongs_to :negative_report
    belongs_to :analytics_result
    belongs_to :stress_trigger
end
