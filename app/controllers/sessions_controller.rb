class SessionsController < ApplicationController

  force_ssl :only => [:new, :create], if: :ssl_configured?

  def create
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      user.update_attribute(:last_login_time, Time.now.to_datetime)
      redirect_to root_url
    else
      redirect_to "/login"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
