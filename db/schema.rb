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

ActiveRecord::Schema.define(version: 20140526140532) do

  create_table "doctor_hospital_joins", force: true do |t|
    t.integer  "doctor_id"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.string   "specialty"
    t.integer  "curable_id"
    t.string   "curable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hospital_patient_joins", force: true do |t|
    t.integer "hospital_id"
    t.integer "patient_id"
  end

  create_table "hospitals", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "specialty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medication_patient_joins", force: true do |t|
    t.integer  "medication_id"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medications", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "disorder"
    t.string   "workflow_state", default: "waiting"
    t.text     "release_note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
