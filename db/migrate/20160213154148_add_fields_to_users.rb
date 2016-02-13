class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :center_id, :integer
    add_column :users, :degree_id, :integer
    add_column :users, :experience, :integer
    add_column :users, :level, :integer
  end
end
