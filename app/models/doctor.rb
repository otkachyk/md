class Doctor < ApplicationRecord
  has_many :notes
  has_many :cards, through: :notes

  has_many :appointments
  has_many :patients, through: :appointments
end
