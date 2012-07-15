class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_user
   session[:user_id] ? @current_user ||= User.find(session[:user_id]) : nil
  end
end
