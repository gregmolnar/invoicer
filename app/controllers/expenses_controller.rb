class ExpensesController < ApplicationController
  inherit_resources

  def file
    @expense = Expense.find(params[:id])
   send_file @expense.file.path, :type => @expense.file_content_type
  end

  private
  def permitted_params
    params.permit(expense: [:name, :date, :amount, :file, :note])
  end
end
