json.extract! user_intake, :id, :user_id, :product_id, :created_at, :updated_at
json.url user_intake_url(user_intake, format: :json)
