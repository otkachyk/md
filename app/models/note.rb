class Note < ApplicationRecord
  belongs_to :card
  belongs_to :doctor
end
