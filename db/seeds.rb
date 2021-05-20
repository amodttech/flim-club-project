# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#  deleting all existing records in DB

Group.destroy_all
puts "groups destroyed"
User.destroy_all
puts "users destroyed"
Film.destroy_all
puts "film destroyed"
FilmList.destroy_all
puts "filmLists destroyed"

# creating new instances of each model in the DB
Group.create!(name: "The Superfriends")
puts 'first group created (The Superfriends)'

User.create!(name: "Roy", email: "Roy.Toy@gmail.com", group_id: Group.first.id)
puts 'first user created (Roy)'

Film.create!(
    "Title":"Double Indemnity",
    "Year":"1944",
    "Rated":"Passed",
    "Released":"06 Jul 1944",
    "Runtime":"107 min",
    "Genre":"Crime, Drama, Film-Noir, Mystery, Thriller",
    "Director":"Billy Wilder",
    "Writer":"Billy Wilder (screenplay), Raymond Chandler (screenplay), James M. Cain (from the novel by)",
    "Actors":"Fred MacMurray, Barbara Stanwyck, Edward G. Robinson, Porter Hall",
    "Plot":"An insurance representative lets himself be talked by a seductive housewife into a murder/insurance fraud scheme that arouses the suspicion of an insurance investigator.",
    "Language":"English",
    "Country":"USA",
    "Poster":"https://m.media-amazon.com/images/M/MV5BOTdlNjgyZGUtOTczYi00MDdhLTljZmMtYTEwZmRiOWFkYjRhXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_SX300.jpg",
    "imdbID":"tt0036775",
    "Website":"N/A"
 )
 puts "created double indemnity"


FilmList.create!(group_id: Group.first.id, film_id: Film.first.id, date_discussed: DateTime.new(2020,5,7,18))
puts 'first film list created (Superfriends + Double Indemnity)'