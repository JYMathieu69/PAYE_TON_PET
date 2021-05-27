class Animal < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy
  has_many :customers, -> { distinct }, through: :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :species, presence: true
  validates :daily_price, presence: true
  validates :description, presence: true

  def dispo?(date)
    bookings.where(date: date).none?
  end
end
