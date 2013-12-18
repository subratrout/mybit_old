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

ActiveRecord::Schema.define(version: 20131218191313) do

  create_table "collaborators", force: true do |t|
    t.string   "partner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "occupation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "gender"
    t.string   "location_place"
    t.integer  "household_size"
    t.string   "uid"
    t.string   "pran"
    t.string   "image"
    t.decimal  "monthly_income"
    t.decimal  "pension_saving"
    t.integer  "occupation_id"
    t.integer  "partner_id"
    t.integer  "location_state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "city"
    t.string   "state"
  end

  add_index "members", ["location_state_id"], name: "index_members_on_location_state_id"
  add_index "members", ["occupation_id"], name: "index_members_on_occupation_id"
  add_index "members", ["partner_id"], name: "index_members_on_partner_id"

end
