class CreateTestQuestions < ActiveRecord::Migration
  def change
    create_table :test_questions do |t|
      t.integer :test_id
      t.integer :question_id
      t.integer :answer
      t.boolean :correct
      t.integer :order
      t.boolean :fail_test_success

      t.timestamps null: false
    end
  end
end
