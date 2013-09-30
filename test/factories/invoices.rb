# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invoice do
    client nil
    invoice_number "MyString"
    due_date "2013-09-30"
    name "MyString"
    address "MyString"
    address2 "MyString"
    city "MyString"
    county "MyString"
    country "MyString"
    tax_number "MyString"
    invoice_status nil
  end
end
