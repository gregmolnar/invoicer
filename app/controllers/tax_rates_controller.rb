class TaxRatesController < ApplicationController
  inherit_resources

  private
  def permitted_params
    params.permit(:tax_rate => [:name, :percent])
  end
end
