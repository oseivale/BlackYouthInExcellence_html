class ReservationsController < ApplicationController


  def new
    @reservation = Reservation.new
  end

  def create
    @restaurant = Restaurant.find
    @reservation = Reservation.new
    @reservation.time = params[:reservation][:time]
    @reservation.guests = params[:reservation][:guests]

    if @reservation.save
      flash[:notice] = "Your table for #{@reservation.guests} guests at #{@restaurant.name} has been booked for #{@reservation.time}."
      redirect_to restaurants_url
    end
  end

  def show

  end

  def destroy

  end

end
