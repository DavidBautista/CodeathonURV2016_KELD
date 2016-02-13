json.array!(@questions) do |question|
  json.extract! question, :id, :sender_id, :exam_id, :question, :correct_answer, :answer_1, :answer_2, :answer_3, :description
  json.url question_url(question, format: :json)
end
