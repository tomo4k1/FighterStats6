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

ActiveRecord::Schema[7.2].define(version: 2025_05_15_034215) do
  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.boolean "is_active"
    t.integer "fighting_game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fighting_game_id"], name: "index_characters_on_fighting_game_id"
  end

  create_table "fighting_games", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "current_version"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "fighting_game_id", null: false
    t.datetime "played_at"
    t.integer "opponent_character_id", null: false
    t.string "opponent_rank"
    t.boolean "is_win"
    t.text "good_points"
    t.text "bad_points"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fighting_game_id"], name: "index_matches_on_fighting_game_id"
    t.index ["opponent_character_id"], name: "index_matches_on_opponent_character_id"
  end

  add_foreign_key "characters", "fighting_games"
  add_foreign_key "matches", "fighting_games"
  add_foreign_key "matches", "opponent_characters"
end
