class AddressesController < ApplicationController
  inherit_resources
  belongs_to :client

  def permitted_params
    params.permit(:address => [:business_name, :address, :address2, :city, :county, :postcode, :country, :postcode, :phone, :email, :website, :email, :bank_details, :default])
  end
end
