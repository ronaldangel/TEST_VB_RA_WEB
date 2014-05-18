json.array!(@projects) do |project|
  json.extract! project, :id, :api, :score
  json.url project_url(project, format: :json)
end
