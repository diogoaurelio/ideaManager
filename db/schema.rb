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

ActiveRecord::Schema.define(version: 20141014202033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "area_interfaces", force: true do |t|
    t.integer  "idea_id"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "area_interfaces", ["area_id"], name: "index_area_interfaces_on_area_id", using: :btree
  add_index "area_interfaces", ["idea_id"], name: "index_area_interfaces_on_idea_id", using: :btree

  create_table "areainterfaces", force: true do |t|
    t.integer  "idea_id"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "areainterfaces", ["area_id"], name: "index_areainterfaces_on_area_id", using: :btree
  add_index "areainterfaces", ["idea_id"], name: "index_areainterfaces_on_idea_id", using: :btree

  create_table "areas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ideas", force: true do |t|
    t.string   "name"
    t.string   "area"
    t.integer  "votes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
