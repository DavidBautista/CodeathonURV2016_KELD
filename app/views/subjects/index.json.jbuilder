json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :description, :center_id, :degree_id
  json.url subject_url(subject, format: :json)
end
