json.array!(@companies) do |company|
  json.extract! company, :id, :name, :cnpj, :phone, :obs, :total_strategy, :used_strategy, :total_consultation, :used_consultation, :dt_last_consultation
  json.url company_url(company, format: :json)
end
