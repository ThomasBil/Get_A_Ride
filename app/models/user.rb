class User < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
