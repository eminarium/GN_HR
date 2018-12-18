json.extract! employees_position, :id, :employee_id, :position_id, :position_type_id, :is_released, :is_changed, :assigned_date, :released_date, :release_reason_id, :is_temporary, :temporary_start_date, :temporary_end_date, :notes, :created_at, :updated_at
json.url employees_position_url(employees_position, format: :json)
