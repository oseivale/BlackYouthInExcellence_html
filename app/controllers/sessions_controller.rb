class SessionsController < ApplicationController

  def new
  end

  def create
    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])
      flash[:notice] = "You have logged in successfully."
      redirect_to root_path
    else
      redirect_to sessions_path
    end
  end

end
