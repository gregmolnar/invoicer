class DashboardController < ApplicationController
  def index
  end

  def balance
    @q = Invoice.unscoped.search(params[:q])
    @invoices = @q.result(distinct: true)
    @q2 = Expense.unscoped.search(params[:q])
    @expenses = @q2.result(distinct: true)
  end
end
