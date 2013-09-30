json.array!(@invoice_statuses) do |invoice_status|
  json.extract! invoice_status, :name
  json.url invoice_status_url(invoice_status, format: :json)
end
