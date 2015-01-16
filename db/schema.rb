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

ActiveRecord::Schema.define(version: 20150116124701) do

  create_table "guest_images", force: true do |t|
    t.text     "image_type"
    t.text     "distribution_path"
    t.integer  "size"
    t.text     "version"
    t.datetime "deleted_at"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "host_images", force: true do |t|
    t.text     "distribution_path"
    t.text     "version"
    t.text     "description"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machines", force: true do |t|
    t.text     "workstation_id"
    t.text     "serialnumber"
    t.text     "model"
    t.text     "mac_address"
    t.text     "description"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workstations", force: true do |t|
    t.text     "name"
    t.text     "sigel"
    t.text     "floor"
    t.text     "room"
    t.datetime "deleted_at"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
