class ReservationsController < ApplicationController

  before_action :require_login


  def index
    @reservations = Reservation.all
    @restaurant = Restaurant.find(params[:restaurant_id])
  end


  def new
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])   # Find the restaurant by its ID, save it into the instance variable - making the @restaurant available to us as an argument in our form_for
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new(restaurant_id: params[:restaurant_id])
    @reservation.time = params[:reservation][:time]
    @reservation.guests = params[:reservation][:guests]

    if @reservation.save
      flash[:notice] = "Your table for #{@reservation.guests} guests at #{@restaurant.name} has been booked for #{@reservation.time}!"
      redirect_to restaurants_url
    else
      render :new
    end
  end

  def show
    @reservations = current_user.reservations
  end

  def destroy

  end

  private

  def require_login
    if !current_user
      flash[:notice] = "You must be logged in to do this"
      redirect_to root_path
    end
  end



end
