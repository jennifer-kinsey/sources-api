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

ActiveRecord::Schema.define(version: 20170818215046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sources", force: :cascade do |t|
    t.integer "category"
    t.integer "code"
    t.string "content_type"
    t.decimal "credits"
    t.string "description"
    t.boolean "disable_datetime"
    t.string "file_name"
    t.string "md5"
    t.string "name"
    t.integer "number_of_datasets"
    t.integer "number_of_models"
    t.integer "number_of_predictions"
    t.boolean "private"
    t.string "project"
    t.string "resource"
    t.integer "size"
    t.string "tags", default: [], array: true
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
