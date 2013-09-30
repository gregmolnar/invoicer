class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.belongs_to :client, index: true
      t.string :invoice_number
      t.date :due_date
      t.string :name
      t.string :address
      t.string :address2
      t.string :city
      t.string :county
      t.string :country
      t.string :tax_number
      t.belongs_to :invoice_status, index: true

      t.timestamps
    end
    add_index :invoices, :name
  end
end
