class Test < ActiveRecord::Base
  belongs_to :user
  belongs_to :exam
  has_many :test_questions
end
