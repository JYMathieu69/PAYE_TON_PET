class User < ApplicationRecord
  has_many :own_animals, foreign_key: 'owner_id', class_name: 'Animal', dependent: :destroy
  has_many :owner_bookings, through: :own_animals, source: :bookings
  has_many :customer_bookings, foreign_key: 'customer_id', class_name: 'Booking'
  has_many :customer_animals, -> { distinct }, through: :customer_bookings, source: :animals
end
