class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      case user.type
      when "Ogrenci"
        redirect_to ogrenci_index_path
      when "Admin"
        redirect_to admin_index_path
      else
        redirect_to projes_path
      end
    else
      flash.now.alert = "Invalid username or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
