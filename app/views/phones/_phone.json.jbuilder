json.extract! phone, :id, :employee_id, :phone_type_id, :phone_no, :notes, :created_at, :updated_at
json.url phone_url(phone, format: :json)
