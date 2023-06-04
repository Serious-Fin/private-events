class EventAttendeesController < ApplicationController
  before_action :authenticate_user!

  def create
    event_attendee = EventAttendee.new(attendee_id: current_user.id, attended_event_id: params[:event_id])
    event_attendee.save
    redirect_to root_path
  end
end
