class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end

  def index
    if params[:food_type].blank?
      @restaurants = RESTAURANTS
    else
    @restaurants = RESTAURANTS.select do |id, restaurant|
      restaurant[:category] == params[:food_type]
    end
    #we need instance variables in order to be able to use in view
  end

def create
    puts "The restaurants is created in DB"
end
end
end
