class Car < ApplicationRecord
  belongs_to :user
  validates :brand, :price_per_day, :localisation, :immatriculation, :details, presence: true
  has_many :bookings
end
