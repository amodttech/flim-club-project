json.extract! film_list, :id, :group_id, :film_id, :date_discussed, :created_at, :updated_at
json.url film_list_url(film_list, format: :json)
