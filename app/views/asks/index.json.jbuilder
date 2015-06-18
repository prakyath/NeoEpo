json.array!(@asks) do |ask|
  json.extract! ask, :id, :subject, :message, :email, :phone
  json.url ask_url(ask, format: :json)
end
