# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invoice_item do
    name "MyString"
    description "MyText"
    quantity 1.5
    unit "MyString"
    price 1.5
  end
end
