class StressTrigger < ApplicationRecord
    belongs_to :user
    has_many :improvement_suggestions, dependent: :destroy
end
