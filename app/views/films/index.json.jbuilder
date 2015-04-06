json.array!(@films) do |film|
  json.extract! film, :id, :title, :director, :genre_id, :description
  json.url film_url(film, format: :json)
end
