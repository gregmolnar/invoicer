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

  test "it calculates the correct total" do
    invoice = FactoryGirl.create(:invoice)
    item_attributes = FactoryGirl.attributes_for(:invoice_item)
    invoice.invoice_items<< InvoiceItem.create(item_attributes.merge(price: 100, quantity: 2))
    assert_equal 200, invoice.total
    invoice.invoice_items<< InvoiceItem.create(item_attributes.merge(price: 100, quantity: 2))
    assert_equal 400, invoice.total
  end
end
