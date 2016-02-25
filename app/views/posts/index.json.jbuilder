json.array!(@posts) do |post|
  json.extract! post, :id, :user, :title, :category, :description, :location, :condition
  json.url post_url(post, format: :json)
end
