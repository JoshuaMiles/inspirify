json.array!(@nouns) do |noun|
  json.extract! noun, :id, :noun
  json.url noun_url(noun, format: :json)
end
