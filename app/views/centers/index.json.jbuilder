json.array!(@centers) do |center|
  json.extract! center, :id, :name, :country, :address
  json.url center_url(center, format: :json)
end
