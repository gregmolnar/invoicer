class InvoicesController < ApplicationController
  inherit_resources
  respond_to :pdf, only: :show

  def show
    super do |format|
      format.pdf { render :pdf => "invoice##{@invoice.invoice_number}"  }
    end
  end
  private
  def permitted_params
    params.permit(:invoice => [:date, :client_id, :invoice_number, :due_date ,:name ,:address ,:address2 ,:city ,:county ,:country ,:tax_number, :invoice_status_id, :invoice_items_attributes => [:name, :description, :tax_rate_id, :quantity, :unit, :price, :_destroy, :id], :invoice_items => [:name, :description, :tax_rate_id, :quantity, :unit, :price, :_destroy]])
  end
end
