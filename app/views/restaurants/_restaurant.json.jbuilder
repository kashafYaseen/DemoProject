json.extract! restaurant, :id, :restaurant_name, :restaurant_contactNo, :restaurant_status, :restaurant_timings, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
