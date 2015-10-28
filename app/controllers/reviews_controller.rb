class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:index, :new, :create]

  def index
    @reviews = @restaurant.reviews
  end

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.create(review_params)
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
