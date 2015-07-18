json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :event_type, :address, :lat, :lng, :expiry_datetime
  json.url event_url(event, format: :json)
end
