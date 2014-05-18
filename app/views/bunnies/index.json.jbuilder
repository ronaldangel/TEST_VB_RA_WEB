json.array!(@bunnies) do |bunny|
  json.extract! bunny, :id, :article_title, :bunny_video
  json.url bunny_url(bunny, format: :json)
end
