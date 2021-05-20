json.extract! film, :id, :Title, :Year, :Rated, :Released, :Runtime, :Genre, :Director, :Writer, :Actors, :Plot, :Language, :Country, :Poster, :imdbID, :Website, :created_at, :updated_at
json.url film_url(film, format: :json)
