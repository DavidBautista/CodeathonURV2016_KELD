class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :description
      t.integer :center_id
      t.integer :degree_id

      t.timestamps null: false
    end
  end
end
