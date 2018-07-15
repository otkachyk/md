class Card < ApplicationRecord
  # t.integer "patient_id"
  # t.string "diagnosis"
  # t.string "complaints"
  # t.string "previous_diseases"
  # t.string "progressive_diseases"
  # t.string "bite"
  # t.string "dental_information"
  # t.string "x_ray"
  # t.string "color_vita"
  # t.date "teaching_date"
  # t.date "dental_hygiene_control_date"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
  # t.index ["patient_id"], name: "index_cards_on_patient_id"


  belongs_to :patient

  has_many :notes
  has_many :doctors, through: :notes
end
