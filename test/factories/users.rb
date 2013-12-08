FactoryGirl.define  do
  factory :user do
    sequence(:email){|n| "email#{n}@example.com"}
    password "password"
    password_confirmation "password"
    addresses { [FactoryGirl.create(:default_address)] }
  end
end