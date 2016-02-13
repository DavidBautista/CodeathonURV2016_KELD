class UserSubject < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject

  enum role: [:user, :moderator, :admin]
end
