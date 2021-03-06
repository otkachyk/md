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

ActiveRecord::Schema.define(version: 20180715173525) do

  create_table "appointments", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "doctor_id"
    t.datetime "meeting_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "cards", force: :cascade do |t|
    t.integer "patient_id"
    t.string "diagnosis"
    t.string "complaints"
    t.string "previous_diseases"
    t.string "progressive_diseases"
    t.string "bite"
    t.string "dental_information"
    t.string "x_ray"
    t.string "color_vita"
    t.date "teaching_date"
    t.date "dental_hygiene_control_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_cards_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "gender"
    t.date "birthdate"
    t.integer "telephone"
    t.string "living_place"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer "card_id"
    t.integer "doctor_id"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_notes_on_card_id"
    t.index ["doctor_id"], name: "index_notes_on_doctor_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "gender"
    t.date "birth_date"
    t.integer "telephone"
    t.string "living_place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
