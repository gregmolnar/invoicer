class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
      t.belongs_to :invoice, index: true
      t.belongs_to :tax_rate, index: true
      t.string :name
      t.text :description
      t.float :quantity
      t.string :unit
      t.float :price

      t.timestamps
    end
  end
end
