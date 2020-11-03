class UserInvitationController < ApplicationController

  def create
    event_id = params[:event_id]
    user = User.where(name: params[:name]).first
    if user
      user_id = user.id
      event = EventAttendee.new(attendee_id: user_id, attended_event_id: event_id)
      event.save
      flash[:notice] = "Invitation sent successfully"
    end
    redirect_to event_path(event_id)
  end
  
end
