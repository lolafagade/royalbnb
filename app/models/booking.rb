class Booking < ApplicationRecord
  belongs_to :princess
  belongs_to :castle
end
