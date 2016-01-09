json.array!(@shirts) do |shirt|
  json.extract! shirt, :id, :inscription, :size, :color, :price, :availability
  json.url shirt_url(shirt, format: :json)
end
