class ReviewsController < ApplicationController
  before_action :find_booking, only: [:new, :create]


  def index
    @booking = policy_scope(Booking)
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.booking = @booking
    authorize @booking

    if @review.save
      # raise
      redirect_to reviews_path
    else
      render :new
    end
  end

  private

  def find_booking
    @booking = Booking.find(params[:booking_id])
    authorize @booking
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
