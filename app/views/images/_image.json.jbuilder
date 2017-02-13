json.extract! image, :id, :name, :description, :album_id, :created_at, :updated_at
json.url image_url(image, format: :json)