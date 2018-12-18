json.extract! employee, :id, :nationality_id, :marital_status_id, :photo_url, :first_name, :last_name, :patronymic, :gender, :dob, :is_local, :is_military_liable, :local_passport_serial, :local_passport_no, :local_passport_given_date, :local_passport_issued_by, :local_passport_scan_url, :notes, :created_at, :updated_at
json.url employee_url(employee, format: :json)
