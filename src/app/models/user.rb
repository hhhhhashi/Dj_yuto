class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :negative_reports, dependent: :destroy
  has_many :stress_triggers, dependent: :destroy
  has_many :improvement_suggestions, dependent: :destroy
  has_many :emotion_logs, dependent: :destroy
  has_many :analytics_results, dependent: :destroy
         
end
