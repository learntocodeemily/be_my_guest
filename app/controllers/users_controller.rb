class UsersController < ApplicationController
  def index


  end

  def show
    @events = current_user.events
    @bookings = current_user.bookings
    @eventcount = @events.count
  end

  def new
  end

  def edit
  end

end
