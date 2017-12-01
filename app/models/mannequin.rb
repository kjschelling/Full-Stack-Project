class Mannequin < ApplicationRecord
  belongs_to :user
  validates_presence_of :given_name, :surname, :measurements, :eye_color, :hair_color, :hair_length, :gender, :height, :weight
end
