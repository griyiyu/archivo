json.array!(@people) do |person|
  json.extract! person, :id, :name, :dni
  json.url person_url(person, format: :json)
end
