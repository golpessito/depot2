json.extract! order, :id, :name, :email, :pay_type, :description, :created_at, :updated_at
json.url order_url(order, format: :json)
