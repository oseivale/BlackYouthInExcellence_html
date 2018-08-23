class RestaurantsController < ApplicationController

  before_action :require_login, except: [:index, :show]

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
    @restaurant.open = params[:restaurant][:open]
    @restaurant.close = params[:restaurant][:close]

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

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    flash[:notice] = "You have deleted the restaurant."
    redirect_to root_path
  end

  private

  def require_login
    if !current_user
      flash[:notice] = "You must be logged in to do this"
      redirect_to root_path  #redirect to login page later
    end
  end

end
