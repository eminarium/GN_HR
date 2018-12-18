json.extract! education, :id, :employee_id, :degree_id, :institution_title, :diploma_title, :diploma_no, :start_date, :end_date, :notes, :created_at, :updated_at
json.url education_url(education, format: :json)
