class CreateAnalyticsResults < ActiveRecord::Migration[6.1]
  def change
    create_table :analytics_results do |t|
      t.integer :user_id,  null: false
      t.json :emotion_trends
      t.json :key_triggers
      t.text :quit_reason_analysis
      t.boolean :positive_signs, default: false, null: false
      t.timestamps
    end
  end
end
