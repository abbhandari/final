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

ActiveRecord::Schema.define(version: 20140807164309) do

  create_table "comments", force: true do |t|
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "title"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gdp"
    t.string   "unemployment_rate"
    t.string   "literacy_rate"
    t.string   "military_budget"
    t.string   "minimum_wage"
    t.string   "average_age"
    t.string   "average_income"
    t.string   "government_type"
    t.string   "head_of_state"
    t.string   "debt"
  end

  create_table "exports", force: true do |t|
    t.string   "materials"
    t.string   "exports_from"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  create_table "imports", force: true do |t|
    t.string   "materials"
    t.string   "imports_from"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  create_table "statistics", force: true do |t|
    t.string   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
