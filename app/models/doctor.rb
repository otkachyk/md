class Doctor < ApplicationRecord
  # t.string "first_name"
  # t.string "last_name"
  # t.string "middle_name"
  # t.string "gender"
  # t.date "birthdate"
  # t.integer "telephone"
  # t.string "living_place"
  # t.string "email"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false


  has_many :notes
  has_many :cards, through: :notes

  has_many :appointments
  has_many :patients, through: :appointments
end
