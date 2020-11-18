class BookingsController < ApplicationController

  before_action :set_booking, only: [:edit, :update] #:accept!, :cancel!,
  before_action :set_tank, only: [:new, :create]
  
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_bookings)
    @booking.tank = @tank
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

# def accept!
#   @booking.reviewstatus = true
#   redirect_to dashboard_path
# end

# def cancel!
#   @booking.reviewstatus = true
#   @booking.bookingstatus = false
#   redirect_to dashboard_path
# end#
  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_status: params[:booking_status])
    redirect_to dashboard_path
  end



  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_tank
    @tank = Tank.find(params[:tank_id])
  end

  def params_bookings
    params.require(:booking).permit(:from_date, :to_date) # , :reviewstatus, :bookingstatus
  end
end
