class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :name
      t.text :description
      t.datetime :end_date
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
