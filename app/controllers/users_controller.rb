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
    @user = User.find(get_user_id)
    @user_future_events = @user.created_events.future_events
    @user_past_events = @user.created_events.past_events
    @past_events = @user.attended_events.past_events
    @future_events = @user.attended_events.future_events
  end


end
