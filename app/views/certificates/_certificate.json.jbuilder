json.extract! certificate, :id, :employee_id, :certificate_type_id, :certificate_title, :certificate_no, :issued_by, :issued_date, :expiry_date, :notes, :created_at, :updated_at
json.url certificate_url(certificate, format: :json)
