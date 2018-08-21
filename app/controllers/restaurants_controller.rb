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
    @restaurant.address = params[:restaurant][:address]
    @restaurant.neighborhood = params[:restaurant][:neighborhood]
    @restaurant.price_range = params[:restaurant][:price_range]
    @restaurant.menu = params[:restaurant][:menu]
    @restaurant.time_slot = params[:restaurant][:time_slot]

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
