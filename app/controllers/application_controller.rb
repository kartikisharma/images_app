class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    # ||= ensures helper doesn't hit the db every time a user hits a web page;
    # it will look it up once, then cache it
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
