json.array!(@tax_rates) do |tax_rate|
  json.extract! tax_rate, :name, :percent
  json.url tax_rate_url(tax_rate, format: :json)
end
