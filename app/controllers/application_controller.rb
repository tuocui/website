class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :current_user

  private

  def current_user
    user ||= User.find(session[:user_id]) if session[:user_id]
    if user and user.last_login_time > Time.now.to_datetime - 1.day
      @current_user = user
    else
      session[:user_id] = nil
    end
  end

  def ssl_configured?
    !Rails.env.development?
  end
end
