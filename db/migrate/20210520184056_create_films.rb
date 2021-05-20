class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :Title
      t.string :Year
      t.string :Rated
      t.string :Released
      t.string :Runtime
      t.string :Genre
      t.string :Director
      t.string :Writer
      t.string :Actors
      t.string :Plot
      t.string :Language
      t.string :Country
      t.string :Poster
      t.string :imdbID
      t.string :Website

      t.timestamps
    end
  end
end
