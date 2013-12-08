class AddPostcodeToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :postcode, :string
  end
end
