json.array!(@clients) do |client|
  json.extract! client, :name
  json.url client_url(client, format: :json)
end
