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

ActiveRecord::Schema.define(version: 20140512012318) do

  create_table "gem_displays", force: true do |t|
    t.string   "name"
    t.string   "info"
    t.string   "platform"
    t.string   "version"
    t.integer  "downloads"
    t.integer  "version_downloads"
    t.string   "authors"
    t.string   "project_uri"
    t.string   "gem_uri"
    t.string   "homepage_uri"
    t.string   "wiki_uri"
    t.string   "documentation_uri"
    t.string   "mailing_list_uri"
    t.string   "source_code_uri"
    t.string   "bug_tracker_uri"
    t.text     "description"
    t.text     "features"
    t.text     "readme"
    t.text     "license"
    t.datetime "expires_at"
    t.datetime "released_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gem_displays", ["name"], name: "index_gem_displays_on_name", unique: true

end
