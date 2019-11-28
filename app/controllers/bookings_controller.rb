class BookingsController < ApplicationController
  before_action :find_event, only: [:new, :create, :show]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.event = @event
    @booking.user = current_user
    if @booking.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def find_event
    @event = Event.find(params[:event_id])
    authorize @event
  end

  def booking_params
    params.require(:booking).permit(:payment)
  end
end
