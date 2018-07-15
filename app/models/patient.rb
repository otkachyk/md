class Patient < ApplicationRecord
  has_many :cards
  has_many :appointments
  has_many :doctors, through: :appointments
end
