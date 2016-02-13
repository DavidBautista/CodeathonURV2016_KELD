class Exam < ActiveRecord::Base
  has_many :questions
  belongs_to :subject
  has_many :tests
end
