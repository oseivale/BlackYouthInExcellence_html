class UsersController < ApplicationController

  before_action :require_login

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = "You have signed up successfully"
      redirect_to root_path
    end
  end

  def profile
    @reservations = Reservation.all
  end

  private

  def require_login
    if !current_user
      flash[:notice] = "You must be logged in to do this"
      redirect_to root_path
    end
  end
end
