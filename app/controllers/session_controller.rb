class SessionController < ApplicationController
  include SessionHelper

  def new
    @user = User.new
  end
  
  def create
    @user = User.where(name: session_params[:name])
    if @user
      session[:user_id] = @user.id
      flash = "Sign in successfull"
      # redirect to event 
    else
      flash.now = "Sign in failed"
      render :new
    end
  end
end
