# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expense do
    name "MyString"
    date "2014-01-03"
    amount 1.5
    file { Rack::Test::UploadedFile.new(File.join(ActionController::TestCase.fixture_path, "/sample.pdf"), 'application/pdf') }
  end
end
