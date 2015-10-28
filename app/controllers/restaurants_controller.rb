class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

   def index
    @restaurants = Restaurant.all
   end

   def show
   end

   def new
    @restaurant = Restaurant.new
   end

   def create
    r = Restaurant.new(restaurant_params)
    r.save
    redirect_to restaurants_path
   end

   private
   def set_restaurant
     @restaurant = Restaurant.find(params[:restaurant_id])
   end
   def restaurant_params
     params.require(:restaurant).permit(:name, :address, :phone, :category)
   end
end
