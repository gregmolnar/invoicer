json.extract! @client, :id, :name, :created_at, :updated_at
json.address @client.addresses.where(default: true).first do |address|
  json.extract! address, business_name:, address:, address2:, city:, county:, country:, postcode:, phone:, fax:, mobile:, website:, email:, :bank_details
end