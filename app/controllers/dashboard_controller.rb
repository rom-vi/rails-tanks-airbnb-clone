class DashboardController < ApplicationController
  before_action :set_items
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def index
  end

  private

  def earnings
    sum = 0
    @tanks.each do |tank|
      tank.bookings.each do |booking|
        days = (booking.to_date - booking.from_date).to_i
        price = booking.tank.price_per_day
        product = days * price
        sum += product
      end
    end
    return sum
  end

  def set_items
    @user = current_user
    @tanks = @user.tanks
    @bookings = @user.bookings
    @rented_tanks = @user.rented_tanks
    # bookings of these tanks done in the view through tank.bookings
    @earnings = earnings()
  end
end
