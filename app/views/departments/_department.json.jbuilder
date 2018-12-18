json.extract! department, :id, :department_title, :parent_department_id, :notes, :created_at, :updated_at
json.url department_url(department, format: :json)
