json.array!(@entidades) do |entidade|
  json.extract! entidade, :id, :codEmp, :razaoSocial, :cep, :numero, :complemento
  json.url entidade_url(entidade, format: :json)
end
