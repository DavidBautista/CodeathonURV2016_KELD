class Question < ActiveRecord::Base
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :exam
  has_many :test_questions
  has_many :reports
  has_many :tests, through: :test_questions
end
