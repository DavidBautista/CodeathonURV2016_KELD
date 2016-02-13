class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
