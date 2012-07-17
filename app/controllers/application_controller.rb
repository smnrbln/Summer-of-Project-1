class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  before_filter :set_locale
  
  private
  def current_user
   session[:user_id] ? @current_user ||= User.find(session[:user_id]) : nil
  end
  
#i18n  
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { locale: I18n.locale }
  end
#
    
end
