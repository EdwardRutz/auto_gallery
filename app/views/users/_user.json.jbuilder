json.extract! user, :id, :name, :position, :phone_number, :email, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
