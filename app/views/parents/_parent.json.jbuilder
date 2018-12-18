json.extract! parent, :id, :employee_id, :parent_type_id, :first_name, :last_name, :patronymic, :gender, :dob, :notes, :created_at, :updated_at
json.url parent_url(parent, format: :json)
