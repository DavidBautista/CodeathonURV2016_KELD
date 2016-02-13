json.array!(@tests) do |test|
  json.extract! test, :id, :user_id, :exam_id, :special, :obtained_experience
  json.url test_url(test, format: :json)
end
