json.array!(@expenses) do |expense|
  json.extract! expense, :id, :name, :date, :amount
  json.url expense_url(expense, format: :json)
end
