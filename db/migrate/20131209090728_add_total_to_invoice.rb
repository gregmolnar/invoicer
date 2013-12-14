class AddTotalToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :total, :float
  end
end
