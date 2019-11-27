class BookingsController < ApplicationController
  before_action :find_event, only: [:new, :create, :show]

  def show
    @booking = Booking.find(params[:booking_id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    # authorize @booking
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

  private

  def find_event
    @event = Event.find(params[:event_id])
    authorize @event
  end

  def booking_params
    params.require(:booking).permit(:payment)
  end
end
