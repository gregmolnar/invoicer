require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @client = FactoryGirl.create(:client)
    @address = @client.addresses.create(FactoryGirl.attributes_for(:address))
  end

  test "should get index" do
    get :index, client_id: @client.id
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new, client_id: @client.id
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, client_id: @client.id, address: { address2: @address.address2, address: @address.address, bank_details: @address.bank_details, business_name: @address.business_name, city: @address.city, country: @address.country, county: @address.county, email: @address.email, fax: @address.fax, mobile: @address.mobile, phone: @address.phone, postcode: @address.postcode, website: @address.website }
    end

    assert_redirected_to client_address_path(@client, assigns(:address))
  end

  test "should show address" do
    get :show, id: @address, client_id: @client.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address, client_id: @client.id
    assert_response :success
  end

  test "should update address" do
    patch :update, id: @address, client_id: @client.id, address: { address2: @address.address2, address: @address.address, bank_details: @address.bank_details, business_name: @address.business_name, city: @address.city, country: @address.country, county: @address.county, email: @address.email, fax: @address.fax, mobile: @address.mobile, phone: @address.phone, postcode: @address.postcode, website: @address.website }
    assert_redirected_to client_address_path(@client, assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address, client_id: @client.id
    end

    assert_redirected_to client_addresses_path(@client)
  end
end
