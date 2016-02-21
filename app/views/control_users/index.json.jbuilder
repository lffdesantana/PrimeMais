json.array!(@users) do |user|
  json.extract! user, :id, :email, :role, :off_at
  json.url person_url(user, format: :json)
end
