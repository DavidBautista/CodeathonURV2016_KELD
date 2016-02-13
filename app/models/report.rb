class Report < ActiveRecord::Base
  belongs_to :question
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
end
