class AddressesController < ApplicationController
  inherit_resources

  def permitted_params
    params.permit(:address => [:business_name, :address, :address2, :city, :county, :postcode, :country, :postcode, :phone, :email, :website, :email, :bank_details])
  end
end
