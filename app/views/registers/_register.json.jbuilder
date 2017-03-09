json.extract! register, :id, :name, :lastName, :email, :created_at, :updated_at
json.url register_url(register, format: :json)