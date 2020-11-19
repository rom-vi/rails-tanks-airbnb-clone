class Tank < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true
  validates :weight_in_kg, numericality: true
  validates :price_per_day, presence: true, numericality: true
  validates :capacity, numericality: true
end
