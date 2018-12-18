json.extract! address, :id, :address_type_id, :employee_id, :country_id, :city_id, :foreign_city_id, :state_id, :region_id, :county_id, :street, :apartment, :flat, :village, :quartal, :rayon, :street_passage, :register_start_date, :register_end_date, :notes, :created_at, :updated_at
json.url address_url(address, format: :json)
