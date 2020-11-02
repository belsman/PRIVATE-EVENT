class UsersController < ApplicationController
  include UserHelper
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_session_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @user_events = @user.created_events
  end


end
