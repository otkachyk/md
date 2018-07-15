class Doctor < ApplicationRecord
  has_many :notes
  has_many :cards, through: :notes
end
