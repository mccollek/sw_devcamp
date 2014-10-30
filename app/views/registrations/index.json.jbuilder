json.array!(@registrations) do |registration|
  json.extract! registration, :id, :user_id, :event_id, :message
  json.url registration_url(registration, format: :json)
end
