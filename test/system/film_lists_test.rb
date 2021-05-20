require "application_system_test_case"

class FilmListsTest < ApplicationSystemTestCase
  setup do
    @film_list = film_lists(:one)
  end

  test "visiting the index" do
    visit film_lists_url
    assert_selector "h1", text: "Film Lists"
  end

  test "creating a Film list" do
    visit film_lists_url
    click_on "New Film List"

    fill_in "Date discussed", with: @film_list.date_discussed
    fill_in "Film", with: @film_list.film_id
    fill_in "Group", with: @film_list.group_id
    click_on "Create Film list"

    assert_text "Film list was successfully created"
    click_on "Back"
  end

  test "updating a Film list" do
    visit film_lists_url
    click_on "Edit", match: :first

    fill_in "Date discussed", with: @film_list.date_discussed
    fill_in "Film", with: @film_list.film_id
    fill_in "Group", with: @film_list.group_id
    click_on "Update Film list"

    assert_text "Film list was successfully updated"
    click_on "Back"
  end

  test "destroying a Film list" do
    visit film_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Film list was successfully destroyed"
  end
end
