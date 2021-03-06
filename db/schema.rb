# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150611085446) do

  create_table "gp_races", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "winner_2014"
    t.string   "pole_2014"
    t.string   "fast_lap_2014"
    t.integer  "attendance_2014"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "legends", force: :cascade do |t|
    t.string   "last_name"
    t.string   "name"
    t.integer  "number"
    t.integer  "n_races"
    t.integer  "n_victory"
    t.integer  "n_second_position"
    t.integer  "n_third_position"
    t.integer  "n_fastest_lap"
    t.integer  "n_pole_positions"
    t.string   "url_photo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "n_championships"
  end

  create_table "pilots", force: :cascade do |t|
    t.string   "last_name"
    t.string   "name"
    t.integer  "number"
    t.string   "team"
    t.integer  "n_races"
    t.integer  "n_victory"
    t.integer  "n_second_position"
    t.integer  "n_third_position"
    t.integer  "n_fastest_lap"
    t.integer  "n_pole_positions"
    t.integer  "n_championships"
    t.string   "url_photo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name"
    t.string   "pilot1"
    t.string   "pilot2"
    t.integer  "n_races"
    t.integer  "n_victories"
    t.integer  "n_podium"
    t.string   "url_photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
