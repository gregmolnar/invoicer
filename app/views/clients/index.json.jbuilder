json.array!(@clients) do |client|
  json.extract! client, :name, :address, :address2, :city, :county, :postcode, :country, :tax_number, :phone, :email, :website
  json.url client_url(client, format: :json)
end
