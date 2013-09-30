json.array!(@invoices) do |invoice|
  json.extract! invoice, :client_id, :invoice_number, :due_date, :name, :address, :address2, :city, :county, :country, :tax_number, :invoice_status_id
  json.url invoice_url(invoice, format: :json)
end
