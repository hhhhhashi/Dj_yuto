class NegativeReport < ApplicationRecord
    belongs_to :user
    has_many :stress_triggers, dependent: :destroy
    has_many :improvement_suggestions, dependent: :destroy
    has_many :emotion_logs, dependent: :destroy

    def self.posted_today_by_user?(user)
        where(user: user, created_at: Date.current.beginning_of_day..Date.current.end_of_day).exists?
    end
end
