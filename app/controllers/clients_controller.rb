class ClientsController < ApplicationController
  respond_to :html
  respond_to :json, only: :index
  inherit_resources

  def index
    super do 
      @clients = @clients.where("name like ?", "%#{params[:q]}%")
    end
  end
  def permitted_params
    params.permit(:client => [:name, :address, :address2, :city, :county, :postcode, :country, :tax_number, :phone, :email, :website])
  end
end
