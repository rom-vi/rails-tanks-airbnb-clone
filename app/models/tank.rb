class Tank < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :weight_in_kg, presence: true, numericality: true
  validates :manufacturer, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true, numericality: true
  validates :capacity, presence: true, numericality: true
end
