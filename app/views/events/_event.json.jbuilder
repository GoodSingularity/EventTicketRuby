json.extract! event, :id, :Title, :Date, :Time, :Tickets, :Price, :created_at, :updated_at
json.url event_url(event, format: :json)
