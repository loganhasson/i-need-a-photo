json.array!(@users) do |user|
  json.extract! user, :name, :email, :facebook_key, :twitter_key, :google_key, :flickr_key
  json.url user_url(user, format: :json)
end
