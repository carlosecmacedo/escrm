json.array!(@users) do |user|
  json.extract! user, :id, :email, :senha, :privilegio, :admin
  json.url user_url(user, format: :json)
end
