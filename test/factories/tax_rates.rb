# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tax_rate do
    name "MyString"
    percent 1.5
  end
end
