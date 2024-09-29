class CreateNegativeReports < ActiveRecord::Migration[6.1]
  def change
    create_table :negative_reports do |t|
      t.integer :user_id,  null: false
      t.datetime :report_date
      t.text :frustration
      t.text :top_annoyance
      t.text :environment_complaint
      t.text :quit_moment
      t.text :future_after_quit
      t.integer :engagement_level
      t.integer :task_impossibility
      t.text :mood_change
      t.timestamps
    end
  end
end
