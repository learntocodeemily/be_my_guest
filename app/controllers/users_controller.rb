class UsersController < ApplicationController
  before_action :find_user, only: [ :show, :edit, :update, ]
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def index


  end

  def show
    @events = current_user.events
    @bookings = current_user.bookings
    @eventcount = @events.count
    @name = "#{current_user.first_name} #{current_user.last_name}"
  end

  def edit
    # authorize @user
  end

  def update
    # authorize @user
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  # def destroy
  #   authorize @user
  #   @user.destroy

  #   redirect_to user_path
  # end

  private

  def find_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:avatar, :diet, :allergy)
  end

end
