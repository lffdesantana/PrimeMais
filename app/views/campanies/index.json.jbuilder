json.array!(@campanies) do |campany|
  json.extract! campany, :id, :name, :cnpj, :phone, :obs, :total_strategy, :used_strategy, :total_consultation, :used_consultation, :dt_last_consultation
  json.url campany_url(campany, format: :json)
end
