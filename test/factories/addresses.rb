# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    business_name "Test"
    address "Address"
    address2 "Address2"
    city "City"
    county "County"
    postcode "Postcode"
    country "Country"
    tax_number "Tax_number"
    phone "Phone"
    email "Email"
    bank_details "Bank details"
  end

  factory :default_address, :parent => :address do
    default true
  end
end
