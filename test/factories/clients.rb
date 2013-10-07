# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    name "Test"
    address "Address"
    address2 "Address2"
    city "City"
    county "County"
    postcode "Postcode"
    country "Country"
    tax_number "Tax_number"
    phone "Phone"
    email "Email"
  end
end
