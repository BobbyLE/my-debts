json.array!(@iowethems) do |iowethem|
  json.extract! iowethem, :id, :amount, :person
  json.url iowethem_url(iowethem, format: :json)
end
