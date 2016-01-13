json.array!(@adjectives) do |adjective|
  json.extract! adjective, :id, :adjective
  json.url adjective_url(adjective, format: :json)
end
