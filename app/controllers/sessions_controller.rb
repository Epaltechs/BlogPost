class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email])
    if user
      session[:user_id] = user.id
    else
      flash[:notice] = 'Unknown user'
    end
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    # current_user = nil
    redirect_to new_session_path
  end
end
