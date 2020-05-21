class CreateSurveyQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :survey_questions do |t|
      t.text :question
      t.references :personality_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
