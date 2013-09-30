class CreateInvoiceStatuses < ActiveRecord::Migration
  def change
    create_table :invoice_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
