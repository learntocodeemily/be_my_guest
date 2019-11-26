class EventsController < ApplicationController


  def index
    @events = Event.all
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def events_params
    @event = Event.find(params[:id])
  end

end
