json.array!(@badges) do |badge|
  json.extract! badge, :id, :name, :icon_path, :description
  json.url badge_url(badge, format: :json)
end
