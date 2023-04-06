json.extract! gym_product, :id, :name, :description, :price, :numInStock, :created_at, :updated_at
json.url gym_product_url(gym_product, format: :json)
