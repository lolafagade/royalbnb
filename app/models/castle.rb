class Castle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :location, presence: true
  validates :price_per_night, presence: true
  validates :photo, presence: true
end
