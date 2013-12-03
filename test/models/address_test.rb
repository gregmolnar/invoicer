require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "it shouldn't delete with invoice" do
    invoice = FactoryGirl.create(:invoice)
    address = FactoryGirl.create(:address)
    address.invoices<< invoice
    address.save
    refute address.destroy
  end
end
