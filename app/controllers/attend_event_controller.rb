class AttendEventController < ApplicationController
  def create
    event_id = params[:event_id]
    user_id = get_user_id
    event = EventAttendee.new(attendee_id: user_id, attended_event_id: event_id)
    event.save
    flash[:notice] = 'Invitation accepted successfully'
    redirect_to event_path(event_id)
  end
end
