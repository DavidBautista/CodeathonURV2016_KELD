class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :user_id
      t.integer :exam_id
      t.boolean :special
      t.integer :obtained_experience

      t.timestamps null: false
    end
  end
end
