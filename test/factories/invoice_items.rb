# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invoice_item do
    invoice nil
    tax_rate nil
    name "MyString"
    description "MyText"
    quantity 1.5
    unit "MyString"
    price 1.5
  end
end
