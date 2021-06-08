class EventAttendeesController < ApplicationController
  def create
    event = Event.find(params[:event_id])

    @event_attendee = event.event_attendees.build(attendee_id: current_user.id)
    redirect_to event_path(events) and return if @event_attendee.save

    redirect_to event_path(event)
  end
end
