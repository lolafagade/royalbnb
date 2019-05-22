class AddSpecialRequestToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :special_request, :string
  end
end
