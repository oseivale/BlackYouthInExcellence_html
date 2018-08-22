class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login, except: [ :index, :show ]

  helper_method :current_user


  def current_user
   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  private

  def require_login
    if !current_user
      flash[:notice] = "You must be logged in to do this"
      redirect_to root_path
    end
  end
end
