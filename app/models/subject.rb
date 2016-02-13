class Subject < ActiveRecord::Base
  belongs_to :degree
  belongs_to :center
  has_many :user_subjects
  has_many :exams
  has_many :users, through: :user_subjects
end
