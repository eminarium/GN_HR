json.extract! state, :id, :state_name, :notes, :created_at, :updated_at
json.url state_url(state, format: :json)
