require "application_system_test_case"

class FilmsTest < ApplicationSystemTestCase
  setup do
    @film = films(:one)
  end

  test "visiting the index" do
    visit films_url
    assert_selector "h1", text: "Films"
  end

  test "creating a Film" do
    visit films_url
    click_on "New Film"

    fill_in "Actors", with: @film.Actors
    fill_in "Country", with: @film.Country
    fill_in "Director", with: @film.Director
    fill_in "Genre", with: @film.Genre
    fill_in "Language", with: @film.Language
    fill_in "Plot", with: @film.Plot
    fill_in "Poster", with: @film.Poster
    fill_in "Rated", with: @film.Rated
    fill_in "Released", with: @film.Released
    fill_in "Runtime", with: @film.Runtime
    fill_in "Title", with: @film.Title
    fill_in "Website", with: @film.Website
    fill_in "Writer", with: @film.Writer
    fill_in "Year", with: @film.Year
    fill_in "Imdbid", with: @film.imdbID
    click_on "Create Film"

    assert_text "Film was successfully created"
    click_on "Back"
  end

  test "updating a Film" do
    visit films_url
    click_on "Edit", match: :first

    fill_in "Actors", with: @film.Actors
    fill_in "Country", with: @film.Country
    fill_in "Director", with: @film.Director
    fill_in "Genre", with: @film.Genre
    fill_in "Language", with: @film.Language
    fill_in "Plot", with: @film.Plot
    fill_in "Poster", with: @film.Poster
    fill_in "Rated", with: @film.Rated
    fill_in "Released", with: @film.Released
    fill_in "Runtime", with: @film.Runtime
    fill_in "Title", with: @film.Title
    fill_in "Website", with: @film.Website
    fill_in "Writer", with: @film.Writer
    fill_in "Year", with: @film.Year
    fill_in "Imdbid", with: @film.imdbID
    click_on "Update Film"

    assert_text "Film was successfully updated"
    click_on "Back"
  end

  test "destroying a Film" do
    visit films_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Film was successfully destroyed"
  end
end