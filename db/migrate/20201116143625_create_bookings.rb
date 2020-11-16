class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :from_date
      t.date :to_date
      t.references :user, null: false, foreign_key: true
      t.references :tank, null: false, foreign_key: true

      t.timestamps
    end
  end
end
