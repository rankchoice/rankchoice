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

ActiveRecord::Schema.define(version: 2019_02_02_215928) do

  create_table "elections", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "candidate0"
    t.string "candidate1"
    t.string "candidate2"
    t.string "candidate3"
    t.string "candidate4"
    t.string "candidate5"
    t.string "candidate6"
    t.string "candidate7"
    t.string "candidate8"
    t.integer "result"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_elections_on_slug", unique: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "candidate0"
    t.string "candidate1"
    t.string "candidate2"
    t.string "candidate3"
    t.string "candidate4"
    t.string "candidate5"
    t.string "candidate6"
    t.string "candidate7"
    t.string "candidate8"
    t.integer "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "election_id"
    t.integer "choice0"
    t.integer "choice1"
    t.integer "choice2"
    t.integer "choice3"
    t.integer "choice4"
    t.integer "choice5"
    t.integer "choice6"
    t.integer "choice7"
    t.integer "choice8"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["election_id"], name: "index_votes_on_election_id"
    t.index ["slug"], name: "index_votes_on_slug", unique: true
  end

end
