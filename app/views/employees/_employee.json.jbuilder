json.extract! employee, :id, :emp_name, :emp_address, :emp_contactNo, :emp_email, :emp_position, :manager_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
