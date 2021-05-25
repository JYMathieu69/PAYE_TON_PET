class Booking < ApplicationRecord
  belongs_to :customer, class_name: 'User'
  belongs_to :animal
  has_one :owner, through: :animal
end
