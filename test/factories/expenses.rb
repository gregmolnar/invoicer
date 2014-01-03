# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expense do
    name "MyString"
    date "2014-01-03"
    amount 1.5
  end
end
