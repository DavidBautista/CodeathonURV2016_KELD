class Test < ActiveRecord::Base
  belongs_to :user
  belongs_to :exam
  has_many :test_questions

  def correct_answers_count
    self.test_questions.where(correct: true).count
  end

  def incorrect_answers_count
    self.test_questions.where(correct: false).count
  end
end
