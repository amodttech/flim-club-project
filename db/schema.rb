# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_20_184236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "film_lists", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.bigint "film_id", null: false
    t.datetime "date_discussed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["film_id"], name: "index_film_lists_on_film_id"
    t.index ["group_id"], name: "index_film_lists_on_group_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "Title"
    t.string "Year"
    t.string "Rated"
    t.string "Released"
    t.string "Runtime"
    t.string "Genre"
    t.string "Director"
    t.string "Writer"
    t.string "Actors"
    t.string "Plot"
    t.string "Language"
    t.string "Country"
    t.string "Poster"
    t.string "imdbID"
    t.string "Website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_users_on_group_id"
  end

  add_foreign_key "film_lists", "films"
  add_foreign_key "film_lists", "groups"
  add_foreign_key "users", "groups"
end
