class InvoiceStatusesController < ApplicationController
  inherit_resources

  private
  def permitted_params
    params.permit(:name)
  end
end
