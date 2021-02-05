json.extract! stock, :id, :name, :ammount, :close_price, :open_price, :high, :low, :created_at, :updated_at
json.url stock_url(stock, format: :json)
