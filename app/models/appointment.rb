class Appointment < ApplicationRecord
  # t.integer "patient_id"
  # t.integer "doctor_id"
  # t.datetime "meeting_date"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
  # t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
  # t.index ["patient_id"], name: "index_appointments_on_patient_id"

  belongs_to :patient
  belongs_to :doctor
end
