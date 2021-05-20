require "test_helper"

class FilmListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @film_list = film_lists(:one)
  end

  test "should get index" do
    get film_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_film_list_url
    assert_response :success
  end

  test "should create film_list" do
    assert_difference('FilmList.count') do
      post film_lists_url, params: { film_list: { date_discussed: @film_list.date_discussed, film_id: @film_list.film_id, group_id: @film_list.group_id } }
    end

    assert_redirected_to film_list_url(FilmList.last)
  end

  test "should show film_list" do
    get film_list_url(@film_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_film_list_url(@film_list)
    assert_response :success
  end

  test "should update film_list" do
    patch film_list_url(@film_list), params: { film_list: { date_discussed: @film_list.date_discussed, film_id: @film_list.film_id, group_id: @film_list.group_id } }
    assert_redirected_to film_list_url(@film_list)
  end

  test "should destroy film_list" do
    assert_difference('FilmList.count', -1) do
      delete film_list_url(@film_list)
    end

    assert_redirected_to film_lists_url
  end
end
