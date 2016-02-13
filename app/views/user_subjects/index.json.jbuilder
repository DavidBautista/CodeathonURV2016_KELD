json.array!(@user_subjects) do |user_subject|
  json.extract! user_subject, :id, :user_id, :subject_id, :role
  json.url user_subject_url(user_subject, format: :json)
end
