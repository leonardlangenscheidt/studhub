json.array!(@earrings) do |earring|
  json.extract! earring, :brand, :color, :matched, :image
  json.url earring_url(earring, format: :json)
end
