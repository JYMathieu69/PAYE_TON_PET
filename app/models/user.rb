class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :own_animals, foreign_key: 'owner_id', class_name: 'Animal', dependent: :destroy
  has_many :owner_bookings, through: :own_animals, source: :bookings
  has_many :customer_bookings, foreign_key: 'customer_id', class_name: 'Booking'
  has_many :customer_animals, -> { distinct }, through: :customer_bookings, source: :animals

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :species, presence: true
  validates :race, presence: true
  validates :daily_price, presence: true
  validates :description, presence: true

  has_one_attached :photos
end
