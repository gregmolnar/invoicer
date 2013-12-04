class UserAddressesController < ApplicationController
  inherit_resources
  defaults resource_class: Address, :collection_name => 'addresses', :instance_name => 'address', :route_instance_name => 'address'
  belongs_to :user
  before_filter :set_view_path

  def set_view_path
    @_prefixes = 'addresses'
  end

  def permitted_params
    params.permit(:address => [:business_name, :address, :address2, :city, :county, :postcode, :country, :postcode, :phone, :email, :website, :email, :bank_details, :default])
  end
end
