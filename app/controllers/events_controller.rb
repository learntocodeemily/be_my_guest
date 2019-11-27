class EventsController < ApplicationController

  before_action :find_event, only: [ :show, :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    # raise
    @events = policy_scope(Event).order(created_at: :desc)
    # @events = Event.all
    @search = params[:search]
    if @search.present?
      @cuisine = @search["cuisine"]
      @events = Event.where(cuisine: @cuisine)
    end
  end

  def show
    @bookings = @event.bookings
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @user = current_user
    @event = Event.new(event_params)
    authorize @event
    @event.user = @user
    if @event.image.nil?
      @event.image = https://res.cloudinary.com/fangb/image/upload/v1574826240/bqk8ih1xicux35olyjmd.jpg
    else
    end

    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def edit
    authorize @event
  end

  def update
    authorize @event
    if @event.update(event_params)
      redirect_to @event
    else
      render :edit
    end
  end

  def destroy
    authorize @event
    @event.destroy

    redirect_to events_path
  end


  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :date, :description, :cuisine, :price, :location, :image, :capacity, :user_id)
  end

end
