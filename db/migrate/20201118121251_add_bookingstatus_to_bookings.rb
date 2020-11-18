class AddBookingstatusToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :booking_status, :string, :default =>"in Review"
  end
end
