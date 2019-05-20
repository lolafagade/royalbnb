class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :check_in_date
      t.date :chech_out_date
      t.integer :total_price
      t.string :status
      t.references :user, foreign_key: true
      t.references :castle, foreign_key: true

      t.timestamps
    end
  end
end
