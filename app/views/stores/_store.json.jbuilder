json.extract! store, :id, :store_name, :description, :address, :phone_number, :mail, :created_at, :updated_at
json.url store_url(store, format: :json)
