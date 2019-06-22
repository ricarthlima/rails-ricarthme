json.extract! gift, :id, :name, :wishlevel, :price, :description, :url_image, :url_prod, :active, :created_at, :updated_at
json.url gift_url(gift, format: :json)
