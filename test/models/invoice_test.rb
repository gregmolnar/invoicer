require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  test "it should set invoice number to 1 for first invoice" do
    invoice = Invoice.new
    assert_equal 1, invoice.invoice_number
  end

  test "it should extract the number and increment from invoice number" do
    Invoice.create!(FactoryGirl.attributes_for(:invoice).merge(invoice_number: 'PN28'))
    invoice = Invoice.new
    assert_equal "PN29", invoice.invoice_number
  end
end
