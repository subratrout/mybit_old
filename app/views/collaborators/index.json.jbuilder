json.array!(@collaborators) do |collaborator|
  json.extract! collaborator, :id, :partner
  json.url collaborator_url(collaborator, format: :json)
end
