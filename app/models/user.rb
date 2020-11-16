class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :tanks
  # rented tanks to get tanks through bookings
  has_many :rented_tanks, through: :bookings, source: :tank
end
