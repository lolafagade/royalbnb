class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :castle
  validates :user_id, presence: true
  validates :castle_id, presence: true
  validates :check_in_date, presence: true
  validates :ckeck_out_date, presence: true
end
