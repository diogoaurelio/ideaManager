json.array!(@ideas) do |idea|
  json.extract! idea, :id, :name, :area, :votes
  json.url idea_url(idea, format: :json)
end
