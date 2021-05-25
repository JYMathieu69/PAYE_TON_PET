class Animal < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy
  has_many :customers, -> { distinct }, through: :bookings

end
