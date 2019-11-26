class EventsController < ApplicationController
  before_action :find_event, only: [ :show, :edit, :update, :destroy ]

  def index
    @events = Event.all
  end


  def show

  end

  def new
    @event = Event.new
  end

  def create
    # @user = User.last
    @event = Event.new(event_params)
    @event.user = @user
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def edit

  end

  private

  def find_event
    @event = Event.find(params[:id])
  end
  def event_params
    params.require(:event).permit(:title, :date, :description, :cuisine, :price, :location, :image, :capacity, :user_id)
  end

end
