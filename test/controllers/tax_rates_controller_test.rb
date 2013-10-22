require 'test_helper'

class TaxRatesControllerTest < ActionController::TestCase
  def setup
    super
    @tax_rate = FactoryGirl.create(:tax_rate)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tax_rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tax_rate" do
    assert_difference('TaxRate.count') do
      post :create, tax_rate: { name: @tax_rate.name, percent: @tax_rate.percent }
    end

    assert_redirected_to tax_rate_path(assigns(:tax_rate))
  end

  test "should show tax_rate" do
    get :show, id: @tax_rate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tax_rate
    assert_response :success
  end

  test "should update tax_rate" do
    patch :update, id: @tax_rate, tax_rate: { name: @tax_rate.name, percent: @tax_rate.percent }
    assert_redirected_to tax_rate_path(assigns(:tax_rate))
  end

  test "should destroy tax_rate" do
    assert_difference('TaxRate.count', -1) do
      delete :destroy, id: @tax_rate
    end

    assert_redirected_to tax_rates_path
  end
end
