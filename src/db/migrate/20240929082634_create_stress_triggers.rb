class CreateStressTriggers < ActiveRecord::Migration[6.1]
  def change
    create_table :stress_triggers do |t|
      t.integer :user_id,  null: false
      t.integer :report_id,  null: false
      t.string :trigger_category
      t.integer :trigger_frequency
      t.integer :improvement_level
      t.timestamps
    end
  end
end
