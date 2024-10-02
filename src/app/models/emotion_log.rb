class EmotionLog < ApplicationRecord
    belongs_to :user
    belongs_to :negative_report
end
