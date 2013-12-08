require 'test_helper'

class InvoicesControllerTest < ActionController::TestCase
  setup do
    @invoice = FactoryGirl.create(:invoice)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice" do
    @invoice_item = FactoryGirl.attributes_for(:invoice_item)
    assert_difference(['Invoice.count', 'Invoice.last.invoice_items.count']) do
      post :create, invoice: { client_id: @invoice.client.id, address2: @invoice.address2, address: @invoice.address, city: @invoice.city, client_id: @invoice.client_id, country: @invoice.country, county: @invoice.county, due_date: @invoice.due_date, invoice_number: @invoice.invoice_number, invoice_status_id: @invoice.invoice_status_id, name: @invoice.name, tax_number: @invoice.tax_number, date: @invoice.date, invoice_items_attributes: [@invoice_item] }
    end
    refute_equal @invoice.id, Invoice.last.id
    sample = @invoice.attributes
    created = Invoice.last.attributes
    sample.delete_if{|e| ["id", "created_at", "updated_at", "address_id"].include? e}
    created.delete_if{|e| ["id", "created_at", "updated_at", "address_id"].include? e}
    assert_equal sample, created
    assert_redirected_to invoice_path(assigns(:invoice))
  end

  # test "should show invoice" do
  #   get :show, id: @invoice
  #   assert_response :success
  # end

  test "should get edit" do
    get :edit, id: @invoice
    assert_response :success
  end

  test "should update invoice" do
    patch :update, id: @invoice, invoice: { address2: @invoice.address2, address: @invoice.address, city: @invoice.city, client_id: @invoice.client_id, country: @invoice.country, county: @invoice.county, due_date: @invoice.due_date, invoice_number: @invoice.invoice_number, invoice_status_id: @invoice.invoice_status_id, name: @invoice.name, tax_number: @invoice.tax_number }
    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete :destroy, id: @invoice
    end

    assert_redirected_to invoices_path
  end
end
