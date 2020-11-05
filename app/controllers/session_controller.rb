class SessionController < ApplicationController
  include SessionHelper

  def new
    @user = User.new
  end

  def create
    @user = User.where(name: session_params[:name]).first
    if @user
      session[:user_id] = @user.id
      flash[:notice] = 'Sign in successfull'
      redirect_to new_event_path
    else
      flash.now[:notice] = 'Sign in failed'
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to new_session_path
  end
end
