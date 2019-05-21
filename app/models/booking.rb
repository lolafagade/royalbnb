class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :castle
  validates :check_in_date, presence: true
  validates :ckeck_out_date, presence: true
end
