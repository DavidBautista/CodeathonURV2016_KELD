json.array!(@user_badges) do |user_badge|
  json.extract! user_badge, :id, :unlocked_date, :badge_id, :user_id, :exam_id, :notified
  json.url user_badge_url(user_badge, format: :json)
end
