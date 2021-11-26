class Car < ApplicationRecord
  belongs_to :user
  validates :brand, :price_per_day, :localisation, :immatriculation, :details, :model, :photos,  presence: true
  validates :photos, length: { minimum: 2, message: "Must be many" }
  has_many :bookings
  has_many_attached :photos


  private

  def validates_number

  end
end
