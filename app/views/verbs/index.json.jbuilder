json.array!(@verbs) do |verb|
  json.extract! verb, :id, :verb
  json.url verb_url(verb, format: :json)
end
