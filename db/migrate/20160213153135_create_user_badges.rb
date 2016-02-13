class CreateUserBadges < ActiveRecord::Migration
  def change
    create_table :user_badges do |t|
      t.datetime :unlocked_date
      t.integer :badge_id
      t.integer :user_id
      t.integer :exam_id
      t.boolean :notified

      t.timestamps null: false
    end
  end
end
