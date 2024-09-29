class CreateEmotionLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :emotion_logs do |t|
      t.integer :user_id,  null: false
      t.integer :report_id,  null: false
      t.text :negative_content
      t.integer :post_negative_mood
      t.boolean :guilt_level, default: false, null: false
      t.boolean :improvement_sign, default: false, null: false
      t.timestamps
    end
  end
end
