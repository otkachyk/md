class Note < ApplicationRecord
  # t.integer "card_id"
  # t.integer "doctor_id"
  # t.string "note"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
  # t.index ["card_id"], name: "index_notes_on_card_id"
  # t.index ["doctor_id"], name: "index_notes_on_doctor_id"

  belongs_to :card
  belongs_to :doctor
end
