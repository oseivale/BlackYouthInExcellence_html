class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end


  def create
    @restaurant = Restaurant.new
    @restaurant.name = params[:restaurant][:name]

    if @restaurant.save
      flash[:notice] = "Your restaurant has been successfully added."
      redirect_to restaurants_url
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
























end
