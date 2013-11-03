require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = FactoryGirl.create(:address)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, address: { address2: @address.address2, address: @address.address, bank_details: @address.bank_details, business_name: @address.business_name, city: @address.city, country: @address.country, county: @address.county, email: @address.email, fax: @address.fax, mobile: @address.mobile, phone: @address.phone, postcode: @address.postcode, website: @address.website }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address
    assert_response :success
  end

  test "should update address" do
    patch :update, id: @address, address: { address2: @address.address2, address: @address.address, bank_details: @address.bank_details, business_name: @address.business_name, city: @address.city, country: @address.country, county: @address.county, email: @address.email, fax: @address.fax, mobile: @address.mobile, phone: @address.phone, postcode: @address.postcode, website: @address.website }
    assert_redirected_to address_path(assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address
    end

    assert_redirected_to addresses_path
  end
end
