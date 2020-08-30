module Reports
  class EventsController < ::ApplicationController
    def speakers
      @event = Event.find events_params[:event_id]
    end

    def attendees
      @event = Event.find events_params[:event_id]
      @attendees = @event.attendees
      @pagy, @attendees = pagy(@event.attendees, items: 500)

    end



    private

    def events_params
      params.permit(:event_id)
    end
  end
end
