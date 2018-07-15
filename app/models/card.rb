class Card < ApplicationRecord
  belongs_to :patient
  has_many :notes
  has_many :doctors, through: :notes
end
