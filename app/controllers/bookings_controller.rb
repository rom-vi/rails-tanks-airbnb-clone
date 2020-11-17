class BookingsController < ApplicationController

  before_action :set_booking, only: [:update]

  def update

  end

# need this later for the US implementation
# def accept!
#   reviewstatus = true
#   bookingstatus = true
# end

# def reject!
#   reviewstatus = true
# end

# def cancel!
#   reviewstatus = true
#   bookingstatus = false
# end



  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
