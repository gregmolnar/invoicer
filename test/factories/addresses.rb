# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    business_name "MyString"
    address "MyString"
    address2 "MyString"
    city "MyString"
    county "MyString"
    country "MyString"
    postcode "MyString"
    phone "MyString"
    fax "MyString"
    mobile "MyString"
    website "MyString"
    email "MyString"
    bank_details "MyText"
  end
end
