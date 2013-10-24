class InvoicesController < ApplicationController
  inherit_resources

  private
  def permitted_params
    params.permit(:invoice => [:client_id, :invoice_number, :due_date ,:name ,:address ,:address2 ,:city ,:county ,:country ,:tax_number, :invoice_status_id, :invoice_items => [:title]])
  end
end
