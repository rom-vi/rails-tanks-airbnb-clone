class AddBookingstatusToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :bookingstatus, :boolean, :default => false
  end
end
