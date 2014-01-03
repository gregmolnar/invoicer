class ExpensesController < ApplicationController
  inherit_resources

  private
  def permitted_params
    params.permit(:name, :amount)
  end
end
