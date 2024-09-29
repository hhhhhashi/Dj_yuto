class CreateImprovementSuggestions < ActiveRecord::Migration[6.1]
  def change
    create_table :improvement_suggestions do |t|
      t.integer :user_id,  null: false
      t.integer :trigger_id,  null: false
      t.text :suggestion_content
      t.string :suggestion_type
      t.string :suggestion_status
      t.text :suggestion_effect
      t.timestamps
    end
  end
end
