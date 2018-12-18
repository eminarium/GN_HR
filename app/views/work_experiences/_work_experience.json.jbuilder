json.extract! work_experience, :id, :employee_id, :organization_title, :start_date, :end_date, :position_title, :position_type_id, :notes, :created_at, :updated_at
json.url work_experience_url(work_experience, format: :json)
