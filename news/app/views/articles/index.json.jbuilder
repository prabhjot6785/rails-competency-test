json.array!(@articles) do |article|
  json.extract! article, :id, :title, :content, :user_id, :category_id, :permalink
  json.url article_url(article, format: :json)
end
