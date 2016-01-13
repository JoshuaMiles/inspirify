json.array!(@phrases) do |phrase|
  json.extract! phrase, :id, :phrase
  json.url phrase_url(phrase, format: :json)
end
