json.array!(@people) do |person|
  json.extract! person, :id, :name, :email, :phone, :status, :observation, :address, :document_number
  json.url person_url(person, format: :json)
end
