json.array!(@clients) do |client|
  json.extract! client, :name
  json.url client_url(client, format: :json)

  json.address do
    json.extract! client.addresses.where(default: true).first, :business_name, :address, :address2, :city, :county, :country, :postcode, :phone, :fax, :mobile, :website, :email, :bank_details, :tax_number
  end
end
