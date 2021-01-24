json.extract! ticket, :id, :Event_id, :amount, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
