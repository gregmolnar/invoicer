require 'test_helper'

class InvoiceFlowTest < ActionDispatch::IntegrationTest
  test "autofill works" do
    Capybara.current_driver = Capybara.javascript_driver
    @client = FactoryGirl.create(:client)
    visit new_invoice_path
    field = 'invoice_client'
    fill_in('invoice_client', :with => 'Test')
    page.execute_script %Q{ $('##{field}').trigger("focus") }
    suggestion = page.find('span.tt-suggestions')
    assert_equal "Test", suggestion.text
    suggestion.click
    assert_equal "Test", page.find("#invoice_name").value
    %w{address address2 city county country tax_number}.each do |n|
        assert_equal n.capitalize, page.find("#invoice_#{n}").value
    end
  end
end
