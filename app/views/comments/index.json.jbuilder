json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :name, :article_id, :comment_id
  json.url comment_url(comment, format: :json)
end
