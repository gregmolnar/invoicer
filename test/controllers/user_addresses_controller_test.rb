require 'test_helper'

class UserAddressesControllerTest < ActionController::TestCase
  def setup
    super
    @address = @user.addresses.create(FactoryGirl.attributes_for(:address))
  end

  test "should get index" do
    get :index, user_id: @user.id
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new, user_id: @user.id
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, user_id: @user.id, address: { address2: @address.address2, address: @address.address, bank_details: @address.bank_details, business_name: @address.business_name, city: @address.city, country: @address.country, county: @address.county, email: @address.email, fax: @address.fax, mobile: @address.mobile, phone: @address.phone, postcode: @address.postcode, website: @address.website }
    end

    assert_redirected_to user_addresses_path(@user)
    assert assigns(:address)
  end

  test "should show address" do
    get :show, id: @address, user_id: @user.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address, user_id: @user.id
    assert_response :success
  end

  test "should update address" do
    patch :update, id: @address, user_id: @user.id, address: { address2: @address.address2, address: @address.address, bank_details: @address.bank_details, business_name: @address.business_name, city: @address.city, country: @address.country, county: @address.county, email: @address.email, fax: @address.fax, mobile: @address.mobile, phone: @address.phone, postcode: @address.postcode, website: @address.website }
    assert_redirected_to user_addresses_path(@user)
    assert assigns(:address)
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address, user_id: @user.id
    end

    assert_redirected_to user_addresses_path(@user)
  end
end
