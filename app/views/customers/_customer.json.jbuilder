json.extract! customer, :id, :customer_name, :customer_address, :customer_contactNo, :customer_email, :created_at, :updated_at
json.url customer_url(customer, format: :json)
