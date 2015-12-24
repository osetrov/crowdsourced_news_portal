json.array!(@articles) do |article|
  json.extract! article, :id, :title, :description, :content, :user_id, :moderated
  json.url article_url(article, format: :json)
end
