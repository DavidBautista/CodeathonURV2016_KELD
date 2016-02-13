json.array!(@reports) do |report|
  json.extract! report, :id, :question_id, :sender_id, :option, :description
  json.url report_url(report, format: :json)
end
