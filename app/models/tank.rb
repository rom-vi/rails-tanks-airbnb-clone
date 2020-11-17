class Tank < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :name, presence: true
  validates :weight_in_kg, presence: true, numericality: true
  validates :description, presence: true
  validates :price_per_day, presence: true, numericality: true
  validates :capacity, presence: true, numericality: true
end
