json.array!(@users) do |user|
  json.extract! user, :id, :email, :senha, :privilegio, :clientes, :admin
  json.url user_url(user, format: :json)
end
