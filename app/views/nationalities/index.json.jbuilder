json.array!(@nationalities) do |nationality|
  json.extract! nationality, :id, :nationality_title, :notes
  json.url nationality_url(nationality, format: :json)
end
