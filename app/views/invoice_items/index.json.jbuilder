json.array!(@invoice_items) do |invoice_item|
  json.extract! invoice_item, :name, :description, :unit, :price
  json.label "#{invoice_item.name} - #{invoice_item.price} / #{invoice_item.unit}"
  json.value invoice_item.name
end
