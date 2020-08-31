module Reports
  class EventsController < ::ApplicationController
    def speakers
      @event = Event.find events_params[:event_id]
    end

    def attendees
      @event = Event.find events_params[:event_id]
      @attendees = @event.attendees.distinct
      @pagy, @attendees = pagy(@event.attendees, items: 500)
    end

  

    def event_id
      @event = Event.find events_params[:event_id]
       @conferences = @event.conferences
      render 'event_id', locals: {conferences: @event.conferences}
    end



    private

    def events_params
      params.permit(:event_id)
    end

  end
end
