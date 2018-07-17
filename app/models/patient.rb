class Patient < ApplicationRecord
  # t.string "first_name"
  # t.string "last_name"
  # t.string "middle_name"
  # t.string "gender"
  # t.date "birth_date"
  # t.integer "telephone"
  # t.string "living_place"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false

  has_many :cards
  has_many :appointments
  has_many :doctors, through: :appointments

  def full_name
    first_name + ' ' + last_name
  end
end
