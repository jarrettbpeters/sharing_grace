json.array!(@give_posts) do |give_post|
  json.extract! give_post, :id, :title, :category, :location, :description, :condition, :user_id
  json.url give_post_url(give_post, format: :json)
end
