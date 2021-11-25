class Car < ApplicationRecord
  belongs_to :user
  validates :brand, :price_per_day, :localisation, :immatriculation, :details, :photos,  presence: true
  has_many :bookings
  has_many_attached :photos
end
