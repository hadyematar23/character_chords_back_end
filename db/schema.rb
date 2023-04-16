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

ActiveRecord::Schema[7.0].define(version: 2023_04_13_051706) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.float "good_min"
    t.float "good_max"
    t.float "lawful_min"
    t.float "lawful_max"
    t.string "description"
    t.bigint "theme_id", null: false
    t.string "url"
    t.integer "alignment", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theme_id"], name: "index_characters_on_theme_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "genre"
    t.string "character"
    t.string "alignment"
    t.text "songs", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "theme_id", null: false
    t.string "question"
    t.string "answer_1"
    t.string "answer_2"
    t.string "answer_3"
    t.string "answer_4"
    t.string "answer_5"
    t.integer "good_evil_chaotic_lawful", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theme_id"], name: "index_questions_on_theme_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_link"
  end

  add_foreign_key "characters", "themes"
  add_foreign_key "questions", "themes"
end
