class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.string :name
      t.string :country
      t.string :address

      t.timestamps null: false
    end
  end
end
