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

ActiveRecord::Schema.define(version: 2019_06_10_043647) do

  create_table "kanjis", force: :cascade do |t|
    t.string "character"
    t.text "koohii1"
    t.text "koohii2"
    t.string "onyomi"
    t.string "kunyomi"
    t.string "nanori"
    t.string "english"
    t.text "examples"
    t.integer "jlpt"
    t.text "components"
    t.integer "kanji_strokes"
    t.string "kanji_radical"
    t.integer "radical_number"
    t.integer "radical_strokes"
    t.string "radical_reading"
    t.string "classification"
    t.string "keyword"
    t.string "grade"
    t.string "frequency"
    t.string "type"
    t.integer "jouyou"
    t.string "traditional"
    t.integer "rtk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
