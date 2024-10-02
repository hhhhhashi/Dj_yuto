class NegativeReport < ApplicationRecord
    belongs_to :user
    has_many :stress_triggers, dependent: :destroy
    has_many :improvement_suggestions, dependent: :destroy
    has_many :emotion_logs, dependent: :destroy
end
