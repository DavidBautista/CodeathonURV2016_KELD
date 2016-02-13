json.array!(@exams) do |exam|
  json.extract! exam, :id, :name, :description, :end_date, :subject_id
  json.url exam_url(exam, format: :json)
end
