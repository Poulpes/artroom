# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_18_211127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist_artworks", force: :cascade do |t|
    t.bigint "artist_id"
    t.bigint "artwork_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_artist_artworks_on_artist_id"
    t.index ["artwork_id"], name: "index_artist_artworks_on_artwork_id"
  end

  create_table "artists", force: :cascade do |t|
    t.bigint "constituent_id"
    t.string "display_name"
    t.string "bio"
    t.string "nationality"
    t.string "gender"
    t.integer "begin_date"
    t.integer "end_date"
    t.string "wiki"
    t.string "ulan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["constituent_id"], name: "index_artists_on_constituent_id"
  end

  create_table "artworks", force: :cascade do |t|
    t.string "title"
    t.string "date"
    t.string "medium"
    t.text "credit_line"
    t.string "classification"
    t.string "department"
    t.string "thumbnail_url"
    t.float "height"
    t.float "width"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "artist_artworks", "artists"
  add_foreign_key "artist_artworks", "artworks"
end
