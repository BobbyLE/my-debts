json.array!(@debts) do |debt|
  json.extract! debt, :id, :amount, :person
  json.url debt_url(debt, format: :json)
end
