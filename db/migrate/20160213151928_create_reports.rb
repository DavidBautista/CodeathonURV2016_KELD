class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :question_id
      t.integer :sender_id
      t.integer :option
      t.text :description
      t.boolean :reviewed

      t.timestamps null: false
    end
  end
end
