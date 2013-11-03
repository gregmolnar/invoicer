json.array!(@addresses) do |address|
  json.extract! address, :business_name, :address, :address2, :city, :county, :country, :postcode, :phone, :fax, :mobile, :website, :email, :bank_details
  json.url address_url(address, format: :json)
end
