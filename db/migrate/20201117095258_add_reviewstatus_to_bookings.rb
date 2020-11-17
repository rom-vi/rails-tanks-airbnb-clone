class AddReviewstatusToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :reviewstatus, :boolean, :default => false
  end
end
