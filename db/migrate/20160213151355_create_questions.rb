class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :sender_id
      t.integer :exam_id
      t.text :question
      t.string :correct_answer
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.text :description

      t.timestamps null: false
    end
  end
end
