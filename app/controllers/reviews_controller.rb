class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:index, :new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.create(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
      # render :new
    end
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
