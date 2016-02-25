json.array!(@receive_posts) do |receive_post|
  json.extract! receive_post, :id, :title, :category, :location, :description, :condition, :user_id
  json.url receive_post_url(receive_post, format: :json)
end
