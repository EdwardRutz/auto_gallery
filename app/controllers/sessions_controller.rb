class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      # TODO.Notice does not show up???
      flash[:notice] = 'You are now logged in'
      redirect_to(dashboard_path)

    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:notice] = 'Logged out of Dashboard'
    redirect_to root_url
  end
end