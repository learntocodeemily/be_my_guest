class BookingsController < ApplicationController
  before_action :find_event, only: [:new, :create, :show]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create

    @booking = Booking.new(booking_params)
    @booking.event = @event
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:booking_id])
  end

  private

  def find_event
    @event = Event.find_by_id(params[:event_id])
  end

  def booking_params
    params.require(:booking).permit(:payment)
  end
end
